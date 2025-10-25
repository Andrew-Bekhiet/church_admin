import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FieldMetadata<T extends Object> with EquatableMixin {
  final Type? _type;
  final Type parentType;
  final String name;
  final String label;
  final bool isOrderable;
  final bool isCodeOnly;
  final Set<Operator> operators;

  const FieldMetadata({
    required this.parentType,
    required this.name,
    required this.label,
    this.isCodeOnly = false,
    this.isOrderable = true,
    Type? type,
    this.operators = const {},
  }) : _type = type;

  static FieldMetadata<Object> fromJson(Json json) {
    if (json.containsKey('parentField') && json.containsKey('targetField')) {
      return RedirectingFieldMetadata.fromJson(json);
    }

    final fieldName = json['name'] as String;
    final typeName = json['parentQueryableType'] as String;

    return AdvancedQueriesMetadata()
            .allQueryables
            .firstWhere((q) => q.name == typeName)
            .fieldsMetadataByName[fieldName] ??
        (throw ArgumentError(
          'Field $fieldName not found in type $typeName',
        ));
  }

  Type get type => _type ?? T;

  QueryableType get parentQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[parentType]!;

  QueryableType<T>? get fieldQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[type] as QueryableType<T>?;

  @override
  List<Object?> get props => [name, label, operators];

  Json toJson() {
    return {
      'name': name,
      'parentQueryableType': parentQueryableType.name,
    };
  }

  Json queryToJson(Json serializedValue) {
    return {name: serializedValue};
  }

  Json serializeOrderBy(Object serializedValue) {
    final subFields = AdvancedQueriesMetadata()
        .allQueryablesByType[type]
        ?.fieldsMetadataByName;

    return {
      name: subFields?['order']?.serializeOrderBy(serializedValue) ??
          subFields?['name']?.serializeOrderBy(serializedValue) ??
          serializedValue,
    };
  }

  /// Creates a redirecting field that exposes deeply nested fields directly on parent types.
  ///
  /// **Purpose:** Flatten complex object hierarchies to improve UX by allowing direct access
  /// to nested fields without requiring users to navigate intermediate objects.
  ///
  /// **Examples:**
  /// ```dart
  /// // Direct area access on Person (Person -> Address -> Area)
  /// PersonFields.address.redirectTo(AddressFields.area)
  ///
  /// // Chained redirection for deep nesting (Person -> Address -> Area -> id)
  /// PersonFields.address.redirectTo(
  ///   AddressFields.area.redirectTo(AreaFields.id),
  ///   alias: 'areaId',
  /// )
  /// ```
  RedirectingFieldMetadata<T, U> redirectTo<U extends Object>(
    FieldMetadata<U> targetField, {
    String? alias,
    String? label,
    bool isExpandable = true,
  }) =>
      RedirectingFieldMetadata<T, U>(
        parentField: this,
        targetField: targetField,
        alias: alias,
        label: label,
        isExpandable: isExpandable,
      );
}
