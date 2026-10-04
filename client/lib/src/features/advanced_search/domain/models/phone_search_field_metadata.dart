import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class PhoneSearchFieldMetadata extends FieldMetadata<String> {
  static const Json _familyAdminType = {
    'personType': {
      'isFamilyAdmin': {'_eq': true},
    },
  };

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

  @override
  Json queryToJson(Json serializedValue) {
    final phoneMatches = {'phone': serializedValue};

    return {
      '_or': [
        {'contacts': phoneMatches},
        {
          'familyContacts': {
            '_and': [_familyAdminType, phoneMatches],
          },
        },
      ],
    };
  }

  @override
  Json serializeOrderBy(Object serializedValue) => {
    'mainContact': {'phone': serializedValue},
  };
}
