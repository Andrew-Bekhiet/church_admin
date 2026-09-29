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
         operators: {StringOperator.contains, StringOperator.eq},
         getValue: (obj) => obj is Person
             ? obj.contacts
                   .firstWhereOrNull((c) => c.isMainPhone && c.isOwn)
                   ?.phone
             : null,
       );

  @override
  Json queryToJson(Json serializedValue) {
    final phone = _storedPhoneComparison(serializedValue);

    return {
      '_or': [
        {
          'contacts': {'phone': phone},
        },
        {
          'family': {
            'contacts': {
              '_and': [
                _familyAdminType,
                {'phone': phone},
              ],
            },
          },
        },
      ],
    };
  }

  @override
  Json serializeOrderBy(Object serializedValue) => {
    'mainContact': {'phone': serializedValue},
  };

  Json _storedPhoneComparison(Json comparison) => {
    for (final MapEntry(:key, :value) in comparison.entries)
      key: switch ((key, value)) {
        ('_ilike', final String pattern) =>
          '%${PhoneNumberService.searchFragment(pattern.replaceAll('%', ''))}%',
        ('_eq', final String typed) =>
          const PhoneNumberService().toE164(typed) ?? typed,
        _ => value,
      },
  };
}
