import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class FieldMetadata<T extends Object> with Equatable {
  /// Field names that key an entity in the normalized cache, in the order they
  /// should be selected. A type declaring none is embedded in its parent by
  /// every operation alike, so it needs no identity.
  static const _keyFields = ['id', 'uid'];

  final Type? _type;
  final Type parentType;
  final String name;
  final String label;
  final bool isOrderable;
  final bool isCodeOnly;
  final Set<Operator> operators;
  final Object? Function(Object) getValue;

  const FieldMetadata({
    required this.parentType,
    required this.name,
    required this.label,
    required this.getValue,
    this.isCodeOnly = false,
    this.isOrderable = true,
    this._type,
    this.operators = const {},
  });

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

  Type get type => _type ?? T;

  QueryableType get parentQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[parentType]!;

  QueryableType<T>? get fieldQueryableType =>
      AdvancedQueriesMetadata().allQueryablesByType[type] as QueryableType<T>?;

  List<String> get fieldPath => [name];

  Json get fieldSelection => wrapSelection(const {});

  /// The selection this field needs when a list is ordered by it: the field
  /// itself, or the `order`/`name` sub-field the ordering actually sorts on.
  Json get orderBySelection {
    final subFields = AdvancedQueriesMetadata()
        .allQueryablesByType[type]
        ?.fieldsMetadataByName;

    return switch (subFields) {
      {'order': final FieldMetadata subField} ||
      {'name': final FieldMetadata subField} => wrapSelection(
        subField.orderBySelection,
      ),
      _ => fieldSelection,
    };
  }

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

  /// Nests [child] under this field, adding the fields `normalize` keys the
  /// nested object by.
  ///
  /// Selections built from these trees are injected into documents after code
  /// generation, so nothing else adds `__typename` to them. Without an identity
  /// the cache embeds the object in its parent, which collides with the
  /// generated operations that do select one and store it as a reference.
  Json wrapSelection(Json child) {
    if (child.isEmpty) return {name: null};

    final subFields = AdvancedQueriesMetadata()
        .allQueryablesByType[type]
        ?.fieldsMetadataByName;

    return {
      name: {
        '__typename': null,
        for (final keyField in _keyFields)
          if (subFields?.containsKey(keyField) ?? false) keyField: null,
        ...child,
      },
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
