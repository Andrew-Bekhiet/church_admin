import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPreferencesService extends BlocObserver {
  static const storeName = 'UserPreferences';
  static const legacyStoreNames = ['Settings'];

  static const _equality = DeepCollectionEquality();

  static const _orderByKeyPrefix = 'lastOrderByFor';
  static const _darkThemeKey = 'darkTheme';
  static const _greatFeastThemeKey = 'greatFeastTheme';
  static const _lastHomeModeKey = 'lastHomeMode';

  // SyncKVStore/Sembast treat put(null) as delete; wrap so key presence is kept.
  static const _nullQueuedValue = <String, bool>{'pendingNull': true};

  static UserPreferencesService get I =>
      globalProviderContainer.read(userPreferencesServiceProvider);

  final SyncKVStore _pendingWritesBox;
  final DatabaseService _databaseService;
  final AuthBloc _authBloc;

  UserPreferences? get _serverPreferences =>
      _authBloc.currentUserData?.preferences;

  bool? get darkTheme {
    if (_hasQueuedWrite(_darkThemeKey)) {
      return _readQueuedWrite(_darkThemeKey) as bool?;
    }

    return _serverPreferences?.darkTheme;
  }

  Future<void> setDarkTheme(bool? value) async {
    _queueWrite(_darkThemeKey, value);
    unawaited(_flushPending());
  }

  bool get greatFeastTheme {
    if (_hasQueuedWrite(_greatFeastThemeKey)) {
      return _readQueuedWrite(_greatFeastThemeKey) as bool? ?? true;
    }

    return _serverPreferences?.greatFeastTheme ?? true;
  }

  Future<void> setGreatFeastTheme(bool value) async {
    _queueWrite(_greatFeastThemeKey, value);
    unawaited(_flushPending());
  }

  HomeMode? get lastHomeMode {
    if (_hasQueuedWrite(_lastHomeModeKey)) {
      final value = _readQueuedWrite(_lastHomeModeKey) as String?;
      return HomeMode.values.firstWhereOrNull((e) => e.name == value);
    }

    return _serverPreferences?.lastHomeMode;
  }

  Future<void> setLastHomeMode(HomeMode? value) async {
    _queueWrite(_lastHomeModeKey, value?.name);
    unawaited(_flushPending());
  }

  UserPreferencesService({
    required SyncKVStore box,
    required DatabaseService databaseService,
    required AuthBloc authBloc,
  }) : _authBloc = authBloc,
       _databaseService = databaseService,
       _pendingWritesBox = box;

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

    final (:orderByPreferences, :scalarWrites) = _pendingWritesBox
        .toMap()
        .entries
        .fold(
          (
            orderByPreferences: <String, Object?>{},
            scalarWrites: <String, Object?>{},
          ),
          (acc, e) {
            final isOrderByEntry =
                e.key.startsWith(_orderByKeyPrefix) && e.value is List;

            if (isOrderByEntry) {
              return (
                orderByPreferences: {
                  ...acc.orderByPreferences,
                  e.key.substring(_orderByKeyPrefix.length): e.value,
                },
                scalarWrites: acc.scalarWrites,
              );
            }

            return (
              orderByPreferences: acc.orderByPreferences,
              scalarWrites: {...acc.scalarWrites, e.key: e.value},
            );
          },
        );

    Input_UsersPreferencesAppendInput appendFields =
        Input_UsersPreferencesAppendInput();
    if (orderByPreferences.isNotEmpty) {
      appendFields = appendFields.copyWith(
        orderByPreferences: orderByPreferences,
      );
    } else if (scalarWrites.isEmpty) {
      return;
    }

    try {
      await _databaseService.userPreferences.updatePreferences(
        uid: uid,
        set: Input_UsersPreferencesSetInput.fromJson(scalarWrites),
        append: appendFields,
      );

      for (final MapEntry(:key, :value) in scalarWrites.entries) {
        if (!_hasQueuedWrite(key) ||
            !_equality.equals(_readQueuedWrite(key), value)) {
          continue;
        }

        _pendingWritesBox.delete(key);
      }

      for (final MapEntry(:key, :value) in orderByPreferences.entries) {
        final pendingWriteKey = '$_orderByKeyPrefix$key';
        if (!_equality.equals(
          _pendingWritesBox.get(pendingWriteKey),
          value,
        )) {
          continue;
        }

        _pendingWritesBox.delete(pendingWriteKey);
      }
    } on Object catch (error, stackTrace) {
      unawaited(
        LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        ),
      );
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

  bool _isNullQueuedValue(Object? value) => identical(_nullQueuedValue, value);

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

  Json toJson() => _pendingWritesBox.toMap().cast<String, dynamic>();
}
