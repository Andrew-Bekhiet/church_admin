import 'package:church_admin/church_admin.dart';

enum AnalyticsEntityType {
  person(key: 'person', idProperty: 'person_id'),
  family(key: 'family', idProperty: 'family_id'),
  area(key: 'area', idProperty: 'area_id'),
  street(key: 'street', idProperty: 'street_id'),
  store(key: 'store', idProperty: 'store_id'),
  service(key: 'service', idProperty: 'service_id'),
  group(key: 'group', idProperty: 'group_id'),
  class$(key: 'class', idProperty: 'class_id'),
  user(key: 'user', idProperty: 'user_id');

  static AnalyticsEntityType? of(Object? entity) => switch (entity) {
    Person() => person,
    Family() => family,
    Area() => area,
    Street() => street,
    Store() => store,
    Service() => service,
    Group() => group,
    Class() => class$,
    User() => user,
    _ => null,
  };

  static Json propertiesOf(Object? entity) => switch ((of(entity), entity)) {
    (final type?, final ViewableWithID entity) => {
      'entity_type': type.key,
      type.idProperty: entity.id,
    },
    _ => const {},
  };

  final String key;
  final String idProperty;

  const AnalyticsEntityType({required this.key, required this.idProperty});
}
