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
      final List<UserPermission> filterValue => {
          name: filterValue.map((e) => e.id).toList(),
        },
      final List<ID> filterValue when filterValue.every((u) => u is User) => {
          'uid': {
            name: filterValue.cast<User>().map((e) => e.uid).toList(),
          }
        },
      final List<ID> filterValue
          when filterValue.every((u) => u is StudyYear) =>
        {
          'order': {
            name: filterValue.cast<StudyYear>().map((e) => e.order).toList(),
          }
        },
      final List<ID> filterValue => {
          'id': {
            name: filterValue.map((e) => e.id).toList(),
          }
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
          final List<ToJson> value => {
              'type': AdvancedQueriesMetadata()
                  .allQueryablesByType[value.first.runtimeType]!
                  .name,
              'value': value.map((e) => e.toJson()).toList()
            },
          final List<UserPermission> value => value.map((e) => e.id).toList(),
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

    if (data case {'type': final type, 'value': final List<Json> value}) {
      final queryableType = AdvancedQueriesMetadata().allQueryables.firstWhere(
            (q) => q.name == type,
            orElse: () =>
                throw Exception('Cannot deserialize $data to List<$V>'),
          );

      return value.map((e) => queryableType.fromJson(e) as V).toList();
    } else if (V == UserPermission ||
        data is List && data.every((e) => e is String)) {
      return (data as List)
          .map((e) => UserPermission.values.asNameMap()[e])
          .nonNulls
          .toList() as List<V>;
    }

    throw UnsupportedError(
      'MultiSelectOperator does not support $name: $data',
    );
  }
}
