import 'package:church_admin/church_admin.dart';

/// A field that refers to current field path, just like the (.) directory in file systems.
///
/// Used when you want don't want to go anywhere in the field path, but still required to provide a field
/// in the API
class DotField extends FieldMetadata<Object> {
  static T _identity<T>(T value) => value;

  const DotField()
    : super(
        parentType: Object,
        name: '',
        label: '',
        isCodeOnly: true,
        isOrderable: false,
        getValue: _identity,
      );
}
