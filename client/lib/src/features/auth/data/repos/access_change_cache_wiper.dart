import 'dart:async';
import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/user_permissions/user_permissions_update_helper.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AccessChangeCacheWiper {
  final GqlKvStore _graphQLCacheStore;
  final List<Future<void> Function()> _clearsOfOtherAccessScopedCaches;
  final void Function() _refetchOpenSubscriptions;

  late final StreamSubscription<void> _subscription;

  AccessChangeCacheWiper({
    required Stream<User?> userDataStream,
    required this._graphQLCacheStore,
    required this._clearsOfOtherAccessScopedCaches,
    required this._refetchOpenSubscriptions,
  }) {
    _subscription = userDataStream
        .whereType<User>()
        .map(_accessOf)
        .asyncMap(_wipeCachesIfFilledUnderOtherAccess)
        .listen(null);
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

  Future<void> _wipeCachesIfFilledUnderOtherAccess(Json access) async {
    final isFilledUnderSameAccess = const DeepCollectionEquality().equals(
      _graphQLCacheStore.filledUnderAccess,
      access,
    );
    if (isFilledUnderSameAccess) return;

    for (final clear in _clearsOfOtherAccessScopedCaches) {
      try {
        await clear();
      } catch (error, stackTrace) {
        await LoggingService.I.exception(
          LogRecord(error: error, stackTrace: stackTrace),
        );
      }
    }

    await _graphQLCacheStore.resetFilledUnder(access);
    _refetchOpenSubscriptions();
  }

  void dispose() => unawaited(_subscription.cancel());
}
