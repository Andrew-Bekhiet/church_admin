import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';

class Condition<T> {
  final Type type;
  final String field;
  final Operator? operator;
  final T? value;

  const Condition({
    required this.type,
    required this.field,
    required this.operator,
    this.value,
  });

  Condition<T> copyWith({
    Type? type,
    String? field,
    Operator? operator,
    T? value,
  }) {
    return Condition(
      type: type ?? this.type,
      field: field ?? this.field,
      operator: operator ?? this.operator,
      value: value ?? this.value,
    );
  }

  Json toJson() {
    final serializedValue = serializeFieldValue(type, field, value);

    return {
      field: operator == null
          ? serializedValue
          : {
              if ((serializedValue ?? value) == null)
                '_isNull': true
              else
                operator!.value: serializedValue ?? value,
            },
    };
  }
}

typedef Serializer<T> = dynamic Function(Type, T?);

final Map<String, Serializer> _serializersByField = {
  'id': _idSerializer,
  'parents': _familiesParentsSerializer,
  'children': _familiesChildrenSerializer,
  'groups': _personsGroupsSerializer,
  'hobbies': _personsHobbiesSerializer,
  'services': _personsServicesSerializer,
  'tags': _personsTagsSerializer,
};

dynamic _personsTagsSerializer<T>(Type type, T? value) =>
    type == Person && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'tag': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _personsServicesSerializer<T>(Type type, T? value) =>
    type == Person && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'service': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _personsHobbiesSerializer<T>(Type type, T? value) =>
    type == Person && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'hobby': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _personsGroupsSerializer<T>(Type type, T? value) =>
    type == Person && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'group': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _familiesChildrenSerializer<T>(Type type, T? value) =>
    type == Family && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'child': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _familiesParentsSerializer<T>(Type type, T? value) =>
    type == Family && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'parent': e.toJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _idSerializer<T>(Type _, T? value) =>
    value is ViewableWithID ? value.id : _serializeByValueType(value);

Json _maybeAddAnd(List<Json> list) {
  return list.length == 1 ? list.single : {'_and': list};
}

dynamic _serializeByValueType<T>(T? value) {
  switch (value) {
    case List<Condition> _:
      return _maybeAddAnd(value.map((e) => e.toJson()).toList());
    case ToJson _:
      return value.toJson();
    case Color _:
      return colorToInt(value);
    case DateTime _:
      return dateToString(value);
    case DateTimeRange _:
      return dateRangeToString(value);
    default:
      return value;
  }
}

dynamic serializeFieldValue(Type type, String field, dynamic value) {
  return _serializersByField[field]?.call(type, value) ??
      _serializeByValueType(value);
}
