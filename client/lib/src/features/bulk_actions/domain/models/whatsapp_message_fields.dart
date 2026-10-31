import 'package:church_admin/church_admin.dart';

abstract final class WhatsappMessageFields {
  static final RegExp _whitespace = RegExp(r'\s+');

  static final FieldMetadata<String> nameAsFirstName = FieldMetadata<String>(
    parentType: Person,
    name: PersonFields().name.name,
    label: PersonFields().name.label,
    getValue: (person) =>
        person is Person ? person.name.trim().split(_whitespace).first : null,
  );
}
