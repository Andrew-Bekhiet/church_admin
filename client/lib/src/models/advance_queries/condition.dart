import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Condition<T> with EquatableMixin {
  final Type type;
  final String field;
  final Operator? operator;
  late final T? value;

  Condition({
    required this.type,
    required this.field,
    required this.operator,
    this.value,
  });

  Condition.fromJson(Json json)
      : type = AdvancedQueriesMetadata.queryableTypes.entries
            .firstWhere((t) => t.value.$2 == json['type'])
            .key,
        field = json['field'],
        operator = json['operator'] == null
            ? null
            : Operator.values.byName(json['operator']) {
    value = deserializeFieldValue(
      type,
      field,
      json['value'],
      json['selectedViewable'],
    );
  }

  @override
  List<Object?> get props => [type, field, operator, value];

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

  Json toSearchJson() {
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

  Json toJson() {
    final serializedValue = value is List<Condition>
        ? (value! as List<Condition>).map((e) => e.toJson()).toList()
        : serializeFieldValue(type, field, value) ?? value;

    return {
      'type': AdvancedQueriesMetadata.queryableTypes[type]!.$2,
      'field': field,
      if (operator != null) 'operator': operator!.name,
      if (serializedValue != null) 'value': serializedValue,
      if (value is ViewableWithID && value is ToJson)
        'selectedViewable': (value! as ToJson).toJson(),
    };
  }
}

typedef Serializer<T> = dynamic Function(Type, T?);

@visibleForTesting
final Map<String, Serializer> serializersByField = {
  'id': _idSerializer,
  'parents': _familiesParentsSerializer,
  'children': _familiesChildrenSerializer,
  'groups': _personsGroupsSerializer,
  'hobbies': _personsHobbiesSerializer,
  'services': _personsServicesSerializer,
  'tags': _personsTagsSerializer,
  'adminUsers': _adminUsersSerializer,
  'permissions': _permissionsSerializer,
};

dynamic _permissionsSerializer<T>(Type type, T? value) =>
    type == User && value is UserPermission
        ? {
            'permission': {'_eq': value.name},
          }
        : _serializeByValueType(value);

dynamic _adminUsersSerializer<T>(Type type, T? value) =>
    type == User && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'user': e.toSearchJson()},
                  )
                  .toList(),
            ),
          }
        : _serializeByValueType(value);

dynamic _personsTagsSerializer<T>(Type type, T? value) =>
    type == Person && value is List<Condition>
        ? {
            ..._maybeAddAnd(
              value
                  .map(
                    (e) => {'tag': e.toSearchJson()},
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
                    (e) => {'service': e.toSearchJson()},
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
                    (e) => {'hobby': e.toSearchJson()},
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
                    (e) => {'group': e.toSearchJson()},
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
                    (e) => {'child': e.toSearchJson()},
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
                    (e) => {'parent': e.toSearchJson()},
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
      return _maybeAddAnd(value.map((e) => e.toSearchJson()).toList());

    case ToJson _:
      return value.toJson();

    case Polygon _:
      return polygonToJson(value);

    case Color _:
      return colorToInt(value);

    case DateTime _:
      return dateToString(value);

    case DateTimeRange _:
      return dateRangeToString(value);

    case UserPermission _:
      return value.name;

    default:
      return value;
  }
}

dynamic serializeFieldValue(Type type, String field, dynamic value) {
  return serializersByField[field]?.call(type, value) ??
      _serializeByValueType(value);
}

dynamic deserializeFieldValue(
  Type type,
  String field,
  dynamic value,
  Json? selectedViewable,
) {
  switch (field) {
    case 'id' when selectedViewable != null:
      return AdvancedQueriesMetadata.typeDeserializers[type]!(selectedViewable);

    case 'color' when value is int:
      return Color(value);

    case 'photoUpdatedAt' || 'birthdate' when value is String:
    case _ when field.startsWith('last') && value is String:
      return dateFromString(value);

    case 'validity' when value is String:
      return dateRangeFromString(value);
  }

  if (value is List<Map>) {
    return value.map((v) => Condition.fromJson(v.cast())).toList();
  } else if (value is Json && value['type'] == 'Polygon') {
    return polygonFromJson(value);
  }
  return value;
}
