// Part 69 of the schema
part of "schema.graphql.dart";

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

enum Enum_UsersFcmTokensConstraint {
  users_fcm_tokens_pkey,
  $unknown;

  factory Enum_UsersFcmTokensConstraint.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensConstraint(value);

  String toJson() => toJson_Enum_UsersFcmTokensConstraint(this);
}

String toJson_Enum_UsersFcmTokensConstraint(Enum_UsersFcmTokensConstraint e) {
  switch (e) {
    case Enum_UsersFcmTokensConstraint.users_fcm_tokens_pkey:
      return r'users_fcm_tokens_pkey';
    case Enum_UsersFcmTokensConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensConstraint fromJson_Enum_UsersFcmTokensConstraint(
  String value,
) {
  switch (value) {
    case r'users_fcm_tokens_pkey':
      return Enum_UsersFcmTokensConstraint.users_fcm_tokens_pkey;
    default:
      return Enum_UsersFcmTokensConstraint.$unknown;
  }
}

enum Enum_UsersFcmTokensSelectColumn {
  createdAt,
  token,
  uid,
  $unknown;

  factory Enum_UsersFcmTokensSelectColumn.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensSelectColumn(value);

  String toJson() => toJson_Enum_UsersFcmTokensSelectColumn(this);
}

String toJson_Enum_UsersFcmTokensSelectColumn(
  Enum_UsersFcmTokensSelectColumn e,
) {
  switch (e) {
    case Enum_UsersFcmTokensSelectColumn.createdAt:
      return r'createdAt';
    case Enum_UsersFcmTokensSelectColumn.token:
      return r'token';
    case Enum_UsersFcmTokensSelectColumn.uid:
      return r'uid';
    case Enum_UsersFcmTokensSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensSelectColumn fromJson_Enum_UsersFcmTokensSelectColumn(
  String value,
) {
  switch (value) {
    case r'createdAt':
      return Enum_UsersFcmTokensSelectColumn.createdAt;
    case r'token':
      return Enum_UsersFcmTokensSelectColumn.token;
    case r'uid':
      return Enum_UsersFcmTokensSelectColumn.uid;
    default:
      return Enum_UsersFcmTokensSelectColumn.$unknown;
  }
}

enum Enum_UsersFcmTokensUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_UsersFcmTokensUpdateColumn.fromJson(String value) =>
      fromJson_Enum_UsersFcmTokensUpdateColumn(value);

  String toJson() => toJson_Enum_UsersFcmTokensUpdateColumn(this);
}

String toJson_Enum_UsersFcmTokensUpdateColumn(
  Enum_UsersFcmTokensUpdateColumn e,
) {
  switch (e) {
    case Enum_UsersFcmTokensUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_UsersFcmTokensUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersFcmTokensUpdateColumn fromJson_Enum_UsersFcmTokensUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_UsersFcmTokensUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_UsersFcmTokensUpdateColumn.$unknown;
  }
}

enum Enum_UsersPreferencesSelectColumn {
  darkTheme,
  greatFeastTheme,
  lastHomeMode,
  orderByPreferences,
  uid,
  updatedAt,
  $unknown;

  factory Enum_UsersPreferencesSelectColumn.fromJson(String value) =>
      fromJson_Enum_UsersPreferencesSelectColumn(value);

  String toJson() => toJson_Enum_UsersPreferencesSelectColumn(this);
}

String toJson_Enum_UsersPreferencesSelectColumn(
  Enum_UsersPreferencesSelectColumn e,
) {
  switch (e) {
    case Enum_UsersPreferencesSelectColumn.darkTheme:
      return r'darkTheme';
    case Enum_UsersPreferencesSelectColumn.greatFeastTheme:
      return r'greatFeastTheme';
    case Enum_UsersPreferencesSelectColumn.lastHomeMode:
      return r'lastHomeMode';
    case Enum_UsersPreferencesSelectColumn.orderByPreferences:
      return r'orderByPreferences';
    case Enum_UsersPreferencesSelectColumn.uid:
      return r'uid';
    case Enum_UsersPreferencesSelectColumn.updatedAt:
      return r'updatedAt';
    case Enum_UsersPreferencesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_UsersPreferencesSelectColumn fromJson_Enum_UsersPreferencesSelectColumn(
  String value,
) {
  switch (value) {
    case r'darkTheme':
      return Enum_UsersPreferencesSelectColumn.darkTheme;
    case r'greatFeastTheme':
      return Enum_UsersPreferencesSelectColumn.greatFeastTheme;
    case r'lastHomeMode':
      return Enum_UsersPreferencesSelectColumn.lastHomeMode;
    case r'orderByPreferences':
      return Enum_UsersPreferencesSelectColumn.orderByPreferences;
    case r'uid':
      return Enum_UsersPreferencesSelectColumn.uid;
    case r'updatedAt':
      return Enum_UsersPreferencesSelectColumn.updatedAt;
    default:
      return Enum_UsersPreferencesSelectColumn.$unknown;
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
