import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class PhoneSearchFieldMetadata extends FieldMetadata<String> {
  PhoneSearchFieldMetadata({
    required super.parentType,
    required super.name,
    required super.label,
  }) : super(
         operators: {...PhoneOperator.values},
         getValue: (obj) => obj is Person
             ? obj.contacts.firstWhereOrNull((c) => c.isMainPhone)?.phone
             : null,
       );
}
