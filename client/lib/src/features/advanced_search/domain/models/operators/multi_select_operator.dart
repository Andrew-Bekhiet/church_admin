import 'package:church_admin/church_admin.dart';

/// An Operator that allows filtering by multiple values of a specific type.
///
/// Example:
/// Person.area -> MultiSelectOperator.anyOf -> [Area(id: '1'), Area(id: '2')]
/// Person.color -> MultiSelectOperator.noneOf -> [Color.red, Color.blue]
/// User.permissions -> MultiSelectOperator.anyOf -> [UserPermission.readAllData, UserPermission.writeAllData]
enum MultiSelectOperator<V extends Object> implements Operator<List<V>?> {
  anyOf._('_in', 'أي من'),
  noneOf._('_nin', 'ليس أي من'),
  isEmpty._('isEmpty', 'فارغ'),
  isNotEmpty._('isNotEmpty', 'ليس فارغاً');

  const MultiSelectOperator._(this.name, this.label);

  @override
  final String label;

  final String name;

  @override
  String get serializationId => 'MultiSelectOperator.$name';

  @override
  bool get acceptsValue => !{isEmpty, isNotEmpty}.contains(this);

  @override
  Json queryToJson(FieldMetadata field, List<V>? filterValue) {
    if (filterValue == null || this == MultiSelectOperator.isNotEmpty) {
      return field.queryToJson({});
    } else if (this == MultiSelectOperator.isEmpty) {
      return {'_not': field.queryToJson({})};
    }

    final value = switch (filterValue) {
      final List<ViewableEnumWithID> filterValue => {
        name: filterValue.map((e) => e.id).toList(),
      },
      final List<ID> filterValue when filterValue.every((u) => u is User) => {
        'uid': {
          name: filterValue.cast<User>().map((e) => e.uid).toList(),
        },
      },
      final List<ID> filterValue
          when filterValue.every((u) => u is StudyYear) =>
        {
          'order': {
            name: filterValue.cast<StudyYear>().map((e) => e.order).toList(),
          },
        },
      final List<ID> filterValue => {
        'id': {
          name: filterValue.map((e) => e.id).toList(),
        },
      },
      final List<String> filterValue => {
        name: filterValue,
      },
      _ => throw UnsupportedError(
        'MultiSelectOperator does not support $name: $filterValue',
      ),
    };

    return field.queryToJson(value);
  }

  @override
  Object? serializeValue(List<V>? value) {
    return switch (this) {
      MultiSelectOperator.isNotEmpty => null,
      _ => switch (value) {
        final List<ViewableEnumWithID> value => {
          'type': AdvancedQueriesMetadata()
              .allQueryablesByType[value.first.enumValue.runtimeType]!
              .name,
          'value': value.map((e) => e.id).toList(),
        },
        final List<SerializableExtra> value => {
          'type': value.first.typeName,
          'value': value.map((e) => e.toJson()).toList(),
        },
        _ => throw UnsupportedError(
          'MultiSelectOperator does not support $name: $value',
        ),
      },
    };
  }

  @override
  List<V>? deserializeValue(Object? data) {
    if (data == null) {
      return null;
    }

    if (data case {'type': final type, 'value': final List<String> value}) {
      final queryableType = AdvancedQueriesMetadata().allQueryables.firstWhere(
        (q) => q.name == type && q.byName != null,
        orElse: () => throw Exception('Cannot deserialize $data to List<$V>'),
      );

      return value
          .map(
            (e) =>
                ViewableEnumWithID.wrap(queryableType.byName!(e) as LabeledEnum)
                    as V,
          )
          .toList();
    } else if (data case {
      'type': final type,
      'value': final List<Json> value,
    }) {
      final queryableType = AdvancedQueriesMetadata().allQueryables.firstWhere(
        (q) => q.name == type && q.fromJson != null,
        orElse: () => throw Exception('Cannot deserialize $data to List<$V>'),
      );

      return value.map((e) => queryableType.fromJson!(e) as V).toList();
    }

    throw UnsupportedError(
      'MultiSelectOperator does not support $name: $data',
    );
  }
}
