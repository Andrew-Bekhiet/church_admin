import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPreferencesService extends BlocObserver {
  static UserPreferencesService get I =>
      globalProviderContainer.read(userPreferencesServiceProvider);
  static const storeName = 'UserPreferences';
  static const legacyStoreNames = ['Settings'];

  static const _equality = DeepCollectionEquality();

  static const _orderByKeyPrefix = 'lastOrderByFor';
  static const _secondLineKeyPrefix = 'lastSecondLineFor';
  static const _darkThemeKey = 'darkTheme';
  static const _greatFeastThemeKey = 'greatFeastTheme';
  static const _lastHomeModeKey = 'lastHomeMode';

  // SyncKVStore/Sembast treat put(null) as delete; wrap so key presence is kept.
  static const _nullQueuedValue = <String, bool>{'pendingNull': true};

  final SyncKVStore _pendingWritesBox;
  final DatabaseService _databaseService;
  final AuthBloc _authBloc;

  UserPreferences? _acknowledgedPreferences;

  /// The signed-in user's preferences lag a write the server already
  /// acknowledged until the next user data refresh, while the acknowledged
  /// write is no longer pending, so the newer of the two is the server's state.
  UserPreferences? get _serverPreferences {
    final user = _authBloc.currentUserData;
    final userPreferences = user?.preferences;
    final acknowledged = _acknowledgedPreferences;

    if (acknowledged == null || acknowledged.uid != user?.uid) {
      return userPreferences;
    }

    return switch ((userPreferences?.updatedAt, acknowledged.updatedAt)) {
      (final refreshedAt?, final acknowledgedAt?)
          when !refreshedAt.isBefore(acknowledgedAt) =>
        userPreferences,
      _ => acknowledged,
    };
  }

  bool? get darkTheme {
    if (_hasQueuedWrite(_darkThemeKey)) {
      return _readQueuedWrite(_darkThemeKey) as bool?;
    }

    return _serverPreferences?.darkTheme;
  }

  bool get greatFeastTheme {
    if (_hasQueuedWrite(_greatFeastThemeKey)) {
      return _readQueuedWrite(_greatFeastThemeKey) as bool? ?? true;
    }

    return _serverPreferences?.greatFeastTheme ?? true;
  }

  HomeMode? get lastHomeMode {
    if (_hasQueuedWrite(_lastHomeModeKey)) {
      final value = _readQueuedWrite(_lastHomeModeKey) as String?;

      return HomeMode.values.firstWhereOrNull((e) => e.name == value);
    }

    return _serverPreferences?.lastHomeMode;
  }

  UserPreferencesService({
    required SyncKVStore box,
    required this._databaseService,
    required this._authBloc,
  }) : _pendingWritesBox = box;

  Future<void> setDarkTheme(bool? value) async {
    _queueWrite(_darkThemeKey, value);
    unawaited(_flushPending());
  }

  Future<void> setGreatFeastTheme(bool value) async {
    _queueWrite(_greatFeastThemeKey, value);
    unawaited(_flushPending());
  }

  Future<void> setLastHomeMode(HomeMode? value) async {
    _queueWrite(_lastHomeModeKey, value?.name);
    unawaited(_flushPending());
  }

  List<OrderBy>? getLastOrderByFor(OrderByPreferenceKey key) {
    final storageKey = key.storageKey;

    final pendingWrite = _pendingWritesBox.get('$_orderByKeyPrefix$storageKey');
    if (pendingWrite != null) {
      return _parseOrderByList(pendingWrite);
    }

    final serverValue = _serverPreferences?.orderByPreferences[storageKey];

    return _parseOrderByList(serverValue);
  }

  Future<void> setLastOrderByFor(
    OrderByPreferenceKey key,
    List<OrderBy> orderBy,
  ) async {
    _pendingWritesBox.put(
      '$_orderByKeyPrefix${key.storageKey}',
      orderBy.map((o) => o.toJson()).toList(),
    );
    unawaited(_flushPending());
  }

  FieldMetadata? getLastSecondLineFieldFor(OrderByPreferenceKey key) {
    final storageKey = key.storageKey;
    final pendingKey = '$_secondLineKeyPrefix$storageKey';

    final value = _hasQueuedWrite(pendingKey)
        ? _readQueuedWrite(pendingKey)
        : _serverPreferences?.secondLinePreferences[storageKey];

    return _parseFieldMetadata(value);
  }

  Future<void> setLastSecondLineFieldFor(
    OrderByPreferenceKey key,
    FieldMetadata? field,
  ) async {
    _queueWrite('$_secondLineKeyPrefix${key.storageKey}', field?.toJson());
    unawaited(_flushPending());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    if (bloc is! AuthBloc || transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final currentState = transition.currentState.unwrapped;
    final nextState = transition.nextState.unwrapped;

    if (currentState is AuthInitial) {
      return;
    }

    if (nextState is AuthAuthenticated && nextState.userData != null) {
      unawaited(_flushPending());
    }
  }

  Future<void> _flushPending() async {
    final uid = _authBloc.currentUserData?.uid;
    if (uid == null) return;

    final (:orderByPreferences, :secondLinePreferences, :scalarWrites) =
        _pendingWritesByKind();

    if (orderByPreferences.isEmpty &&
        secondLinePreferences.isEmpty &&
        scalarWrites.isEmpty) {
      return;
    }

    final appendFields = Input_UsersPreferencesAppendInput(
      orderByPreferences: orderByPreferences.isEmpty
          ? null
          : orderByPreferences,
      secondLinePreferences: secondLinePreferences.isEmpty
          ? null
          : secondLinePreferences,
    );

    try {
      final acknowledged = await _databaseService.userPreferences
          .updatePreferences(
            uid: uid,
            set: Input_UsersPreferencesSetInput.fromJson(scalarWrites),
            append: appendFields,
          );
      _maybeRememberAcknowledged(acknowledged);

      _deleteUnchangedPendingWrites('', scalarWrites);
      _deleteUnchangedPendingWrites(_orderByKeyPrefix, orderByPreferences);
      _deleteUnchangedPendingWrites(
        _secondLineKeyPrefix,
        secondLinePreferences,
      );
    } on Object catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        ),
      );
    }
  }

  ({
    Map<String, Object?> orderByPreferences,
    Map<String, Object?> secondLinePreferences,
    Map<String, Object?> scalarWrites,
  })
  _pendingWritesByKind() {
    final orderByPreferences = <String, Object?>{};
    final secondLinePreferences = <String, Object?>{};
    final scalarWrites = <String, Object?>{};

    for (final MapEntry(:key, :value) in _pendingWritesBox.toMap().entries) {
      if (key.startsWith(_orderByKeyPrefix) && value is List) {
        orderByPreferences[key.substring(_orderByKeyPrefix.length)] = value;
      } else if (key.startsWith(_secondLineKeyPrefix)) {
        secondLinePreferences[key.substring(_secondLineKeyPrefix.length)] =
            _isNullQueuedValue(value) ? null : value;
      } else {
        scalarWrites[key] = _isNullQueuedValue(value) ? null : value;
      }
    }

    return (
      orderByPreferences: orderByPreferences,
      secondLinePreferences: secondLinePreferences,
      scalarWrites: scalarWrites,
    );
  }

  void _maybeRememberAcknowledged(Fragment_UserPreferences? acknowledged) {
    if (acknowledged == null) return;

    final next = UserPreferences.fromJson(acknowledged.toJson());
    final kept = _acknowledgedPreferences;
    final keptIsNewer =
        kept != null &&
        kept.uid == next.uid &&
        switch ((kept.updatedAt, next.updatedAt)) {
          (final keptAt?, final nextAt?) => nextAt.isBefore(keptAt),
          _ => false,
        };
    if (keptIsNewer) return;

    _acknowledgedPreferences = next;
  }

  void _deleteUnchangedPendingWrites(
    String prefix,
    Map<String, Object?> flushed,
  ) {
    for (final MapEntry(:key, :value) in flushed.entries) {
      final pendingWriteKey = '$prefix$key';
      if (!_hasQueuedWrite(pendingWriteKey) ||
          !_equality.equals(_readQueuedWrite(pendingWriteKey), value)) {
        continue;
      }

      _pendingWritesBox.delete(pendingWriteKey);
    }
  }

  bool _hasQueuedWrite(String key) => _pendingWritesBox.containsKey(key);

  Object? _readQueuedWrite(String key) {
    final value = _pendingWritesBox.get(key);
    if (_isNullQueuedValue(value)) return null;

    return value;
  }

  void _queueWrite(String key, Object? value) {
    _pendingWritesBox.put(key, value ?? _nullQueuedValue);
  }

  bool _isNullQueuedValue(Object? value) =>
      identical(_nullQueuedValue, value) ||
      (value is Map && value.length == 1 && value['pendingNull'] == true);

  List<OrderBy>? _parseOrderByList(Object? value) {
    if (value == null || value is! List) return null;

    final orderBy = value
        .whereType<Map>()
        .map(Json.from)
        .map((v) {
          try {
            return OrderBy.fromJson(v);
          } catch (error) {
            return null;
          }
        })
        .nonNulls
        .toList();

    return orderBy.isEmpty ? null : orderBy;
  }

  FieldMetadata? _parseFieldMetadata(Object? value) {
    if (value is! Map) return null;

    try {
      return FieldMetadata.fromJson(Json.from(value));
    } catch (error) {
      return null;
    }
  }

  Json toJson() => _pendingWritesBox.toMap().cast<String, dynamic>();
}
