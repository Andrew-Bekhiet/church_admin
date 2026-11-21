import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';
import 'package:church_admin/src/features/data_export/application/export_operations_storage.dart';
import 'package:collection/collection.dart';
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

  AccessChangeCacheWiper({
    required Stream<User?> userDataStream,
    required this._graphQLCacheStore,
    required this._clearsOfCachesBesideGraphQL,
    required this._refetchOpenSubscriptions,
  }) {
    _subscription = userDataStream
        .whereType<User>()
        .map(_accessOf)
        .asyncMap(_wipeCachesAndRefetchIfFilledUnderOtherAccess)
        .listen(null, onError: _logFailure);
  }

  Json _accessOf(User user) => {
    'uid': user.uid,
    'permissions': user.permissions.map((p) => p.name).sorted(),
    'adminOn': [
      for (final scope in user.adminOn ?? const <AdminOnData>[])
        jsonEncode(
          UserPermissionsUpdateHelper.adminOnInsertInputFrom(
            null,
            scope,
          ).toJson(),
        ),
    ].sorted(),
  };

  Future<void> _wipeCachesAndRefetchIfFilledUnderOtherAccess(
    Json access,
  ) async {
    final isFilledUnderSameAccess = const DeepCollectionEquality().equals(
      _graphQLCacheStore.filledUnderAccess,
      access,
    );
    if (isFilledUnderSameAccess) return;

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
      await _graphQLCacheStore.resetFilledUnder(access);
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
