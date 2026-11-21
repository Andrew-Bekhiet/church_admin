import 'package:church_admin/church_admin.dart';

/// Reads what the running app keeps in its on-device GraphQL cache.
abstract final class E2eDeviceCache {
  static bool holdsPerson(String id) => globalProviderContainer
      .read(graphQLCacheStore)
      .toMap()
      .containsKey('Persons:$id');
}
