import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FieldMetadata<T extends Object> with Equatable {
  static FieldMetadata<Object> fromJson(Json json) {
    if (json.containsKey('parentField') && json.containsKey('targetField')) {
      return RedirectingFieldMetadata.fromJson(json);
    }

    final fieldName = json['name'] as String;
    final typeName = json['parentQueryableType'] as String;

    return AdvancedQueriesMetadata().allQueryables
            .firstWhere((q) => q.name == typeName)
            .fieldsMetadataByName[fieldName] ??
        (throw ArgumentError(
          'Field $fieldName not found in type $typeName',
        ));
  }

  final Type? _type;
  final Type parentType;
  final String name;
  final String label;
  final bool isOrderable;
  final bool isCodeOnly;
  final Set<Operator> operators;
  final Object? Function(Object) getValue;

  Type get type => _type ?? T;

  QueryableType get parentQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[parentType]!;

  QueryableType<T>? get fieldQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[type] as QueryableType<T>?;

  QueryableType? get referencedObjectType => switch (fieldQueryableType) {
    final QueryableType type when !type.isEnum && type.keyField != this => type,
    _ => null,
  };

  FieldMetadata get sortKey =>
      switch (referencedObjectType?.fieldsMetadataByName) {
        {'order': final subField} ||
        {'name': final subField} => redirectTo(subField.sortKey),
        _ => this,
      };

  @override
  List<Object?> get props => [name, label, operators];

  const FieldMetadata({
    required this.parentType,
    required this.name,
    required this.label,
    required this.getValue,
    this.isCodeOnly = false,
    this.isOrderable = true,
    this.operators = const {},
    this._type,
  });

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
      name:
          name == 'id' ||
              name == 'uid' ||
              serializedValue is Map ||
              serializedValue is List
          ? serializedValue
          : subFields?['order']?.serializeOrderBy(serializedValue) ??
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
    bool isExpandable = true,
    String? alias,
    String? label,
    bool? isOrderable,
  }) => RedirectingFieldMetadata<T, U>(
    parentField: this,
    targetField: targetField,
    alias: alias,
    label: label,
    isExpandable: isExpandable,
    isOrderable: isOrderable,
  );
}
