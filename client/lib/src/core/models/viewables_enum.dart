import 'package:church_admin/church_admin.dart';

enum ViewablesEnum {
  area,
  street,
  store,
  family,
  service,
  class$,
  group,
  person,
  user;

  static const Map<Type, ViewablesEnum> typeToEnum = {
    Area: ViewablesEnum.area,
    Street: ViewablesEnum.street,
    Store: ViewablesEnum.store,
    Family: ViewablesEnum.family,
    Service: ViewablesEnum.service,
    Class: ViewablesEnum.class$,
    Group: ViewablesEnum.group,
    Person: ViewablesEnum.person,
    User: ViewablesEnum.user,
  };

  static ViewablesEnum from<T extends Viewable>() {
    final enumValue = typeToEnum[T];

    if (enumValue == null) {
      throw ArgumentError('No ViewablesEnum for type $T');
    }

    return enumValue;
  }

  String toPluralString() {
    if (this == ViewablesEnum.family) {
      return 'families';
    } else if (this == ViewablesEnum.class$) {
      return 'classes';
    } else {
      return '${name}s';
    }
  }

  String toSingularString() {
    if (this == ViewablesEnum.family) {
      return 'family';
    } else if (this == ViewablesEnum.class$) {
      return 'class';
    } else {
      return name;
    }
  }
}
