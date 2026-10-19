// Part 70 of the schema
part of "hasura_schema.gql.dart";

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
  secondLinePreferences,
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
    case Enum_UsersPreferencesSelectColumn.secondLinePreferences:
      return r'secondLinePreferences';
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
    case r'secondLinePreferences':
      return Enum_UsersPreferencesSelectColumn.secondLinePreferences;
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
