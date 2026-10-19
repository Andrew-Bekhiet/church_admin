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
