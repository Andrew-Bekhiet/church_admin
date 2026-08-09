import 'package:church_admin/church_admin.dart';

/// A field that redirects queries to deeply nested target fields while appearing
/// as a direct field on the parent type.
///
/// Automatically handle query serialization by chaining
/// nested field paths (e.g., Person.area => address.area).
class RedirectingFieldMetadata<P extends Object, T extends Object>
    extends FieldMetadata<T> {
  static RedirectingFieldMetadata<P, T>
  fromJson<P extends Object, T extends Object>(
    Json json,
  ) {
    final parentField = FieldMetadata.fromJson(json['parentField'] as Json);
    final targetField = FieldMetadata.fromJson(json['targetField'] as Json);

    return RedirectingFieldMetadata<P, T>(
      parentField: parentField as FieldMetadata<P>,
      targetField: targetField as FieldMetadata<T>,
      alias: json['alias'] as String?,
      label: json['label'] as String?,
      isExpandable: json['isExpandable'] as bool? ?? true,
    );
  }

  final FieldMetadata<P> parentField;
  final FieldMetadata<T> targetField;
  final bool isExpandable;

  // Intentionally ignoring runtimeType to ignore the type parameters
  // because deserialized fields can't be created with the same
  // type parameters as original fields
  @override
  int get hashCode => Object.hash(parentField, targetField);

  @override
  List<String> get fieldPath => [...parentField.fieldPath, name];

  RedirectingFieldMetadata({
    required this.parentField,
    required this.targetField,
    this.isExpandable = true,
    bool? isOrderable,
    String? alias,
    String? label,
  }) : super(
         parentType: parentField.parentType,
         name: alias ?? targetField.name,
         label: label ?? targetField.label,
         isCodeOnly: targetField.isCodeOnly,
         isOrderable: isOrderable ?? targetField.isOrderable,
         type: targetField.type,
         operators: targetField.operators,
         getValue: (obj) {
           final parentValue = parentField.getValue(obj);

           if (parentValue == null) return null;

           return targetField.getValue(parentValue);
         },
       );

  // Intentionally ignoring runtimeType to ignore the type parameters
  // because deserialized fields can't be created with the same
  // type parameters as original fields
  @override
  bool operator ==(Object other) {
    return other is RedirectingFieldMetadata &&
        parentField == other.parentField &&
        targetField == other.targetField;
  }

  @override
  Json toJson() {
    return {
      'parentField': parentField.toJson(),
      'targetField': targetField.toJson(),
      'alias': name,
      'label': label,
      'isExpandable': isExpandable,
    };
  }

  @override
  Json queryToJson(Json serializedValue) {
    return parentField.queryToJson(targetField.queryToJson(serializedValue));
  }

  @override
  Json serializeOrderBy(Object serializedValue) {
    return parentField.serializeOrderBy(
      targetField.serializeOrderBy(serializedValue),
    );
  }
}
