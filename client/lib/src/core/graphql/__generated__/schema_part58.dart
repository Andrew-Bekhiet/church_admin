// Part 58 of the schema
part of "schema.graphql.dart";

String toJson_Enum_ServicesUpdateColumn(Enum_ServicesUpdateColumn e) {
  switch (e) {
    case Enum_ServicesUpdateColumn.color:
      return r'color';
    case Enum_ServicesUpdateColumn.name:
      return r'name';
    case Enum_ServicesUpdateColumn.nextServiceId:
      return r'nextServiceId';
    case Enum_ServicesUpdateColumn.studyYearFromId:
      return r'studyYearFromId';
    case Enum_ServicesUpdateColumn.studyYearToId:
      return r'studyYearToId';
    case Enum_ServicesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ServicesUpdateColumn fromJson_Enum_ServicesUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_ServicesUpdateColumn.color;
    case r'name':
      return Enum_ServicesUpdateColumn.name;
    case r'nextServiceId':
      return Enum_ServicesUpdateColumn.nextServiceId;
    case r'studyYearFromId':
      return Enum_ServicesUpdateColumn.studyYearFromId;
    case r'studyYearToId':
      return Enum_ServicesUpdateColumn.studyYearToId;
    default:
      return Enum_ServicesUpdateColumn.$unknown;
  }
}

enum Enum_ShammasLevelsSelectColumn {
  id,
  name,
  order,
  $unknown;

  factory Enum_ShammasLevelsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ShammasLevelsSelectColumn(value);

  String toJson() => toJson_Enum_ShammasLevelsSelectColumn(this);
}

String toJson_Enum_ShammasLevelsSelectColumn(Enum_ShammasLevelsSelectColumn e) {
  switch (e) {
    case Enum_ShammasLevelsSelectColumn.id:
      return r'id';
    case Enum_ShammasLevelsSelectColumn.name:
      return r'name';
    case Enum_ShammasLevelsSelectColumn.order:
      return r'order';
    case Enum_ShammasLevelsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ShammasLevelsSelectColumn fromJson_Enum_ShammasLevelsSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_ShammasLevelsSelectColumn.id;
    case r'name':
      return Enum_ShammasLevelsSelectColumn.name;
    case r'order':
      return Enum_ShammasLevelsSelectColumn.order;
    default:
      return Enum_ShammasLevelsSelectColumn.$unknown;
  }
}

enum Enum_StoresConstraint {
  stores_pkey,
  $unknown;

  factory Enum_StoresConstraint.fromJson(String value) =>
      fromJson_Enum_StoresConstraint(value);

  String toJson() => toJson_Enum_StoresConstraint(this);
}

String toJson_Enum_StoresConstraint(Enum_StoresConstraint e) {
  switch (e) {
    case Enum_StoresConstraint.stores_pkey:
      return r'stores_pkey';
    case Enum_StoresConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StoresConstraint fromJson_Enum_StoresConstraint(String value) {
  switch (value) {
    case r'stores_pkey':
      return Enum_StoresConstraint.stores_pkey;
    default:
      return Enum_StoresConstraint.$unknown;
  }
}

enum Enum_StoresSelectColumn {
  adminFamily,
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  $unknown;

  factory Enum_StoresSelectColumn.fromJson(String value) =>
      fromJson_Enum_StoresSelectColumn(value);

  String toJson() => toJson_Enum_StoresSelectColumn(this);
}

String toJson_Enum_StoresSelectColumn(Enum_StoresSelectColumn e) {
  switch (e) {
    case Enum_StoresSelectColumn.adminFamily:
      return r'adminFamily';
    case Enum_StoresSelectColumn.blurhash:
      return r'blurhash';
    case Enum_StoresSelectColumn.color:
      return r'color';
    case Enum_StoresSelectColumn.id:
      return r'id';
    case Enum_StoresSelectColumn.name:
      return r'name';
    case Enum_StoresSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_StoresSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StoresSelectColumn fromJson_Enum_StoresSelectColumn(String value) {
  switch (value) {
    case r'adminFamily':
      return Enum_StoresSelectColumn.adminFamily;
    case r'blurhash':
      return Enum_StoresSelectColumn.blurhash;
    case r'color':
      return Enum_StoresSelectColumn.color;
    case r'id':
      return Enum_StoresSelectColumn.id;
    case r'name':
      return Enum_StoresSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_StoresSelectColumn.photoUpdatedAt;
    default:
      return Enum_StoresSelectColumn.$unknown;
  }
}

enum Enum_StoresUpdateColumn {
  adminFamily,
  color,
  name,
  $unknown;

  factory Enum_StoresUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StoresUpdateColumn(value);

  String toJson() => toJson_Enum_StoresUpdateColumn(this);
}

String toJson_Enum_StoresUpdateColumn(Enum_StoresUpdateColumn e) {
  switch (e) {
    case Enum_StoresUpdateColumn.adminFamily:
      return r'adminFamily';
    case Enum_StoresUpdateColumn.color:
      return r'color';
    case Enum_StoresUpdateColumn.name:
      return r'name';
    case Enum_StoresUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StoresUpdateColumn fromJson_Enum_StoresUpdateColumn(String value) {
  switch (value) {
    case r'adminFamily':
      return Enum_StoresUpdateColumn.adminFamily;
    case r'color':
      return Enum_StoresUpdateColumn.color;
    case r'name':
      return Enum_StoresUpdateColumn.name;
    default:
      return Enum_StoresUpdateColumn.$unknown;
  }
}

enum Enum_StreetsConstraint {
  streets_pkey,
  $unknown;

  factory Enum_StreetsConstraint.fromJson(String value) =>
      fromJson_Enum_StreetsConstraint(value);

  String toJson() => toJson_Enum_StreetsConstraint(this);
}

String toJson_Enum_StreetsConstraint(Enum_StreetsConstraint e) {
  switch (e) {
    case Enum_StreetsConstraint.streets_pkey:
      return r'streets_pkey';
    case Enum_StreetsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsConstraint fromJson_Enum_StreetsConstraint(String value) {
  switch (value) {
    case r'streets_pkey':
      return Enum_StreetsConstraint.streets_pkey;
    default:
      return Enum_StreetsConstraint.$unknown;
  }
}

enum Enum_StreetsSelectColumn {
  blurhash,
  color,
  id,
  line,
  name,
  photoUpdatedAt,
  $unknown;

  factory Enum_StreetsSelectColumn.fromJson(String value) =>
      fromJson_Enum_StreetsSelectColumn(value);

  String toJson() => toJson_Enum_StreetsSelectColumn(this);
}

String toJson_Enum_StreetsSelectColumn(Enum_StreetsSelectColumn e) {
  switch (e) {
    case Enum_StreetsSelectColumn.blurhash:
      return r'blurhash';
    case Enum_StreetsSelectColumn.color:
      return r'color';
    case Enum_StreetsSelectColumn.id:
      return r'id';
    case Enum_StreetsSelectColumn.line:
      return r'line';
    case Enum_StreetsSelectColumn.name:
      return r'name';
    case Enum_StreetsSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_StreetsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsSelectColumn fromJson_Enum_StreetsSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_StreetsSelectColumn.blurhash;
    case r'color':
      return Enum_StreetsSelectColumn.color;
    case r'id':
      return Enum_StreetsSelectColumn.id;
    case r'line':
      return Enum_StreetsSelectColumn.line;
    case r'name':
      return Enum_StreetsSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_StreetsSelectColumn.photoUpdatedAt;
    default:
      return Enum_StreetsSelectColumn.$unknown;
  }
}

enum Enum_StreetsUpdateColumn {
  color,
  line,
  name,
  $unknown;

  factory Enum_StreetsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StreetsUpdateColumn(value);

  String toJson() => toJson_Enum_StreetsUpdateColumn(this);
}

String toJson_Enum_StreetsUpdateColumn(Enum_StreetsUpdateColumn e) {
  switch (e) {
    case Enum_StreetsUpdateColumn.color:
      return r'color';
    case Enum_StreetsUpdateColumn.line:
      return r'line';
    case Enum_StreetsUpdateColumn.name:
      return r'name';
    case Enum_StreetsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StreetsUpdateColumn fromJson_Enum_StreetsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_StreetsUpdateColumn.color;
    case r'line':
      return Enum_StreetsUpdateColumn.line;
    case r'name':
      return Enum_StreetsUpdateColumn.name;
    default:
      return Enum_StreetsUpdateColumn.$unknown;
  }
}

enum Enum_StudyYearsConstraint {
  study_years_name_key,
  study_years_order_key,
  study_years_pkey,
  $unknown;

  factory Enum_StudyYearsConstraint.fromJson(String value) =>
      fromJson_Enum_StudyYearsConstraint(value);

  String toJson() => toJson_Enum_StudyYearsConstraint(this);
}

String toJson_Enum_StudyYearsConstraint(Enum_StudyYearsConstraint e) {
  switch (e) {
    case Enum_StudyYearsConstraint.study_years_name_key:
      return r'study_years_name_key';
    case Enum_StudyYearsConstraint.study_years_order_key:
      return r'study_years_order_key';
    case Enum_StudyYearsConstraint.study_years_pkey:
      return r'study_years_pkey';
    case Enum_StudyYearsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsConstraint fromJson_Enum_StudyYearsConstraint(String value) {
  switch (value) {
    case r'study_years_name_key':
      return Enum_StudyYearsConstraint.study_years_name_key;
    case r'study_years_order_key':
      return Enum_StudyYearsConstraint.study_years_order_key;
    case r'study_years_pkey':
      return Enum_StudyYearsConstraint.study_years_pkey;
    default:
      return Enum_StudyYearsConstraint.$unknown;
  }
}

enum Enum_StudyYearsSelectColumn {
  id,
  name,
  order,
  $unknown;

  factory Enum_StudyYearsSelectColumn.fromJson(String value) =>
      fromJson_Enum_StudyYearsSelectColumn(value);

  String toJson() => toJson_Enum_StudyYearsSelectColumn(this);
}

String toJson_Enum_StudyYearsSelectColumn(Enum_StudyYearsSelectColumn e) {
  switch (e) {
    case Enum_StudyYearsSelectColumn.id:
      return r'id';
    case Enum_StudyYearsSelectColumn.name:
      return r'name';
    case Enum_StudyYearsSelectColumn.order:
      return r'order';
    case Enum_StudyYearsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsSelectColumn fromJson_Enum_StudyYearsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_StudyYearsSelectColumn.id;
    case r'name':
      return Enum_StudyYearsSelectColumn.name;
    case r'order':
      return Enum_StudyYearsSelectColumn.order;
    default:
      return Enum_StudyYearsSelectColumn.$unknown;
  }
}

enum Enum_StudyYearsUpdateColumn {
  name,
  $unknown;

  factory Enum_StudyYearsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_StudyYearsUpdateColumn(value);

  String toJson() => toJson_Enum_StudyYearsUpdateColumn(this);
}

String toJson_Enum_StudyYearsUpdateColumn(Enum_StudyYearsUpdateColumn e) {
  switch (e) {
    case Enum_StudyYearsUpdateColumn.name:
      return r'name';
    case Enum_StudyYearsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_StudyYearsUpdateColumn fromJson_Enum_StudyYearsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_StudyYearsUpdateColumn.name;
    default:
      return Enum_StudyYearsUpdateColumn.$unknown;
  }
}

enum Enum_TagsConstraint {
  tags_name_key,
  tags_pkey,
  $unknown;

  factory Enum_TagsConstraint.fromJson(String value) =>
      fromJson_Enum_TagsConstraint(value);

  String toJson() => toJson_Enum_TagsConstraint(this);
}

String toJson_Enum_TagsConstraint(Enum_TagsConstraint e) {
  switch (e) {
    case Enum_TagsConstraint.tags_name_key:
      return r'tags_name_key';
    case Enum_TagsConstraint.tags_pkey:
      return r'tags_pkey';
    case Enum_TagsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_TagsConstraint fromJson_Enum_TagsConstraint(String value) {
  switch (value) {
    case r'tags_name_key':
      return Enum_TagsConstraint.tags_name_key;
    case r'tags_pkey':
      return Enum_TagsConstraint.tags_pkey;
    default:
      return Enum_TagsConstraint.$unknown;
  }
}

enum Enum_TagsSelectColumn {
  color,
  id,
  name,
  $unknown;

  factory Enum_TagsSelectColumn.fromJson(String value) =>
      fromJson_Enum_TagsSelectColumn(value);

  String toJson() => toJson_Enum_TagsSelectColumn(this);
}

String toJson_Enum_TagsSelectColumn(Enum_TagsSelectColumn e) {
  switch (e) {
    case Enum_TagsSelectColumn.color:
      return r'color';
    case Enum_TagsSelectColumn.id:
      return r'id';
    case Enum_TagsSelectColumn.name:
      return r'name';
    case Enum_TagsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_TagsSelectColumn fromJson_Enum_TagsSelectColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_TagsSelectColumn.color;
    case r'id':
      return Enum_TagsSelectColumn.id;
    case r'name':
      return Enum_TagsSelectColumn.name;
    default:
      return Enum_TagsSelectColumn.$unknown;
  }
}

enum Enum_TagsUpdateColumn {
  color,
  name,
  $unknown;

  factory Enum_TagsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_TagsUpdateColumn(value);

  String toJson() => toJson_Enum_TagsUpdateColumn(this);
}

String toJson_Enum_TagsUpdateColumn(Enum_TagsUpdateColumn e) {
  switch (e) {
    case Enum_TagsUpdateColumn.color:
      return r'color';
    case Enum_TagsUpdateColumn.name:
      return r'name';
    case Enum_TagsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_TagsUpdateColumn fromJson_Enum_TagsUpdateColumn(String value) {
  switch (value) {
    case r'color':
      return Enum_TagsUpdateColumn.color;
    case r'name':
      return Enum_TagsUpdateColumn.name;
    default:
      return Enum_TagsUpdateColumn.$unknown;
  }
}

enum Enum_UniversitiesConstraint {
  universities_name_key,
  universities_pkey,
  $unknown;

  factory Enum_UniversitiesConstraint.fromJson(String value) =>
      fromJson_Enum_UniversitiesConstraint(value);

  String toJson() => toJson_Enum_UniversitiesConstraint(this);
}

String toJson_Enum_UniversitiesConstraint(Enum_UniversitiesConstraint e) {
  switch (e) {
    case Enum_UniversitiesConstraint.universities_name_key:
      return r'universities_name_key';
    case Enum_UniversitiesConstraint.universities_pkey:
      return r'universities_pkey';
    case Enum_UniversitiesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesConstraint fromJson_Enum_UniversitiesConstraint(String value) {
  switch (value) {
    case r'universities_name_key':
      return Enum_UniversitiesConstraint.universities_name_key;
    case r'universities_pkey':
      return Enum_UniversitiesConstraint.universities_pkey;
    default:
      return Enum_UniversitiesConstraint.$unknown;
  }
}

enum Enum_UniversitiesSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_UniversitiesSelectColumn.fromJson(String value) =>
      fromJson_Enum_UniversitiesSelectColumn(value);

  String toJson() => toJson_Enum_UniversitiesSelectColumn(this);
}

String toJson_Enum_UniversitiesSelectColumn(Enum_UniversitiesSelectColumn e) {
  switch (e) {
    case Enum_UniversitiesSelectColumn.id:
      return r'id';
    case Enum_UniversitiesSelectColumn.name:
      return r'name';
    case Enum_UniversitiesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesSelectColumn fromJson_Enum_UniversitiesSelectColumn(
  String value,
) {
  switch (value) {
    case r'id':
      return Enum_UniversitiesSelectColumn.id;
    case r'name':
      return Enum_UniversitiesSelectColumn.name;
    default:
      return Enum_UniversitiesSelectColumn.$unknown;
  }
}

enum Enum_UniversitiesUpdateColumn {
  name,
  $unknown;

  factory Enum_UniversitiesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_UniversitiesUpdateColumn(value);

  String toJson() => toJson_Enum_UniversitiesUpdateColumn(this);
}

String toJson_Enum_UniversitiesUpdateColumn(Enum_UniversitiesUpdateColumn e) {
  switch (e) {
    case Enum_UniversitiesUpdateColumn.name:
      return r'name';
    case Enum_UniversitiesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UniversitiesUpdateColumn fromJson_Enum_UniversitiesUpdateColumn(
  String value,
) {
  switch (value) {
    case r'name':
      return Enum_UniversitiesUpdateColumn.name;
    default:
      return Enum_UniversitiesUpdateColumn.$unknown;
  }
}

enum Enum___TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum___TypeKind.fromJson(String value) =>
      fromJson_Enum___TypeKind(value);

  String toJson() => toJson_Enum___TypeKind(this);
}

String toJson_Enum___TypeKind(Enum___TypeKind e) {
  switch (e) {
    case Enum___TypeKind.SCALAR:
      return r'SCALAR';
    case Enum___TypeKind.OBJECT:
      return r'OBJECT';
    case Enum___TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum___TypeKind.UNION:
      return r'UNION';
    case Enum___TypeKind.ENUM:
      return r'ENUM';
    case Enum___TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___TypeKind.LIST:
      return r'LIST';
    case Enum___TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum___TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum___TypeKind fromJson_Enum___TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum___TypeKind.SCALAR;
    case r'OBJECT':
      return Enum___TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum___TypeKind.INTERFACE;
    case r'UNION':
      return Enum___TypeKind.UNION;
    case r'ENUM':
      return Enum___TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum___TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum___TypeKind.LIST;
    case r'NON_NULL':
      return Enum___TypeKind.NON_NULL;
    default:
      return Enum___TypeKind.$unknown;
  }
}

enum Enum___DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum___DirectiveLocation.fromJson(String value) =>
      fromJson_Enum___DirectiveLocation(value);

  String toJson() => toJson_Enum___DirectiveLocation(this);
}

String toJson_Enum___DirectiveLocation(Enum___DirectiveLocation e) {
  switch (e) {
    case Enum___DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum___DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum___DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum___DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum___DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum___DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum___DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum___DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum___DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum___DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum___DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum___DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum___DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum___DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum___DirectiveLocation.UNION:
      return r'UNION';
    case Enum___DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum___DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum___DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum___DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum___DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum___DirectiveLocation fromJson_Enum___DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum___DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum___DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum___DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum___DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum___DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum___DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum___DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum___DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum___DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum___DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum___DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum___DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum___DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum___DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum___DirectiveLocation.UNION;
    case r'ENUM':
      return Enum___DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum___DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum___DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum___DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum___DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
