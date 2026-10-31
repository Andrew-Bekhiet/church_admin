import 'package:church_admin/church_admin.dart';

abstract final class WhatsappMessageFields {
  static final RegExp _whitespace = RegExp(r'\s+');

  static final FieldMetadata<String> firstName = FieldMetadata<String>(
    parentType: Person,
    name: 'firstName',
    label: 'الاسم الأول',
    getValue: (person) =>
        person is Person ? person.name.trim().split(_whitespace).first : null,
  );
}
