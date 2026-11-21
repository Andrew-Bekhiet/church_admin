import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class AccessChangeCacheWiper {
  static final provider = Provider<AccessChangeCacheWiper>((ref) {
    final wiper = AccessChangeCacheWiper(
      userDataStream: ref.watch(authBlocProvider).userDataStream,
      graphQLCacheStore: ref.watch(graphQLCacheStore),
      clearsOfCachesBesideGraphQL: [
        ref.watch(imageUrlCacheServiceProvider).box.clear,
        ref.watch(baseCacheManagerProvider).emptyCache,
        ref.watch(ExportOperationsStorage.provider).deleteSavedFiles,
      ],
      refetchOpenSubscriptions: ref.watch(addAuthLinkProvider).reconnectSocket,
    );

    ref.onDispose(wiper.dispose);

    return wiper;
  });

  final GqlKvStore _graphQLCacheStore;
  final List<Future<void> Function()> _clearsOfCachesBesideGraphQL;
  final void Function() _refetchOpenSubscriptions;

  late final StreamSubscription<void> _subscription;
  Future<void> _settled = Future.value();

  /// Completes once every user seen so far has been checked, and any wipe
  /// that check started has finished.
  Future<void> get settled => _settled;

  AccessChangeCacheWiper({
    required Stream<User?> userDataStream,
    required this._graphQLCacheStore,
    required this._clearsOfCachesBesideGraphQL,
    required this._refetchOpenSubscriptions,
  }) {
    _subscription = userDataStream
        .whereType<User>()
        .map(UserAccess.of)
        .listen(
          (access) => _settled = _settled
              .then(
                (_) => _maybeWipeCachesAndRefetchIfAccessChanged(access),
              )
              .catchError(_logFailure),
        );
  }

  Future<void> _maybeWipeCachesAndRefetchIfAccessChanged(
    UserAccess access,
  ) async {
    final filledUnderAccess = switch (_graphQLCacheStore.filledUnderAccess) {
      final json? => UserAccess.fromJson(json),
      null => null,
    };
    if (filledUnderAccess == access) return;

    bool everyCacheBesideGraphQLCleared = true;
    for (final clear in _clearsOfCachesBesideGraphQL) {
      try {
        await clear();
      } catch (error, stackTrace) {
        everyCacheBesideGraphQLCleared = false;
        _logFailure(error, stackTrace);
      }
    }

    if (everyCacheBesideGraphQLCleared) {
      await _graphQLCacheStore.resetFilledUnder(access.toJson());
    } else {
      await _graphQLCacheStore.resetLeavingAccessUnrecorded();
    }
    _refetchOpenSubscriptions();
  }

  void _logFailure(Object error, StackTrace stackTrace) => unawaited(
    LoggingService.I.exception(LogRecord(error: error, stackTrace: stackTrace)),
  );

  void dispose() => unawaited(_subscription.cancel());
}
