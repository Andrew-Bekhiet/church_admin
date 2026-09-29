import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

class PhoneSearchFieldMetadata extends FieldMetadata<String> {
  static const Json _familyAdminType = {
    'personType': {
      'isFamilyAdmin': {'_eq': true},
    },
  };

  static const Json _anyRow = {
    'id': {'_isNull': false},
  };

  PhoneSearchFieldMetadata({
    required super.parentType,
    required super.name,
    required super.label,
  }) : super(
         operators: {
           ...StringOperator.values,
           PrimitiveOperator.isNull,
           PrimitiveOperator.isNotNull,
         },
         getValue: (obj) => obj is Person
             ? obj.contacts
                   .firstWhereOrNull((c) => c.isMainPhone && c.isOwn)
                   ?.phone
             : null,
       );

  @override
  Json queryToJson(Json serializedValue) => switch (serializedValue) {
    {'_isNull': true} || {'_eq': ''} => {'_not': _matching(_anyRow)},
    {'_isNull': false} || {'_neq': ''} => _matching(_anyRow),
    {'_neq': final String typed} => {
      '_not': _matchingPhone({'_eq': _e164(typed)}),
    },
    {'_nilike': final String pattern} => {
      '_not': _matchingPhone({'_ilike': _storedPattern(pattern)}),
    },
    {'_ilike': final String pattern} => _matchingPhone({
      '_ilike': _storedPattern(pattern),
    }),
    {'_eq': final String typed} => _matchingPhone({'_eq': _e164(typed)}),
    _ => _matchingPhone(serializedValue),
  };

  @override
  Json serializeOrderBy(Object serializedValue) => {
    'mainContact': {'phone': serializedValue},
  };

  Json _matchingPhone(Json comparison) => _matching({'phone': comparison});

  Json _matching(Json rowFilter) => {
    '_or': [
      {'contacts': rowFilter},
      {
        'family': {
          'contacts': {
            '_and': [_familyAdminType, rowFilter],
          },
        },
      },
    ],
  };

  String _e164(String typed) =>
      const PhoneNumberService().toE164(typed) ?? typed;

  String _storedPattern(String pattern) {
    final fragment = PhoneNumberService.searchFragment(
      pattern.replaceAll('%', ''),
    );
    final anchoredAtStart = !pattern.startsWith('%');
    final stored = anchoredAtStart && !fragment.startsWith('+')
        ? '+20$fragment'
        : fragment;

    return '${anchoredAtStart ? '' : '%'}$stored${pattern.endsWith('%') ? '%' : ''}';
  }
}
