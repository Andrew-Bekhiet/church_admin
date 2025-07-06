import 'package:church_admin/church_admin.dart';

/// A field that refers to current field path, just like the (.) directory in file systems.
///
/// Used when you want don't want to go anywhere in the field path, but still requried to provide a field
/// in the API
///
/// Passes through the serialized value without any modification.
class DotField extends FieldMetadata<Object> {
  const DotField()
      : super(
            parentType: Object,
            name: '',
            label: '',
            isCodeOnly: true,
            isOrderable: false);

  @override
  Json queryToJson(Json serializedValue) {
    return serializedValue;
  }

  @override
  Json serializeOrderBy(Object serializedValue) {
    throw UnsupportedError('NilField cannot be used for ordering');
  }
}
