import 'package:church_admin/church_admin.dart';

class AshPhoneFilter {
  const AshPhoneFilter();

  Json translate(AshFieldPath path, PhoneOperator operator, String? value) {
    final typed = value ?? '';
    late final containing = {
      'ilike': '%${PhoneNumberFormat.normalizeForSearch(typed)}%',
    };
    late final equal = {
      'eq': const PhoneNumberService().toE164(typed) ?? typed,
    };
    const anyNumber = {'isNil': false};
    final at = path.wrap;

    return switch (operator) {
      PhoneOperator.contains => at(containing),
      PhoneOperator.doesNotContain => {
        'not': [at(containing)],
      },
      PhoneOperator.startsWith => at({
        'ilike': '${PhoneNumberFormat.toInternationalStart(typed)}%',
      }),
      PhoneOperator.endsWith => at({
        'ilike': '%${PhoneNumberFormat.withoutSeparators(typed)}',
      }),
      PhoneOperator.eq => at(equal),
      PhoneOperator.neq => {
        'not': [at(equal)],
      },
      PhoneOperator.isNotEmpty => at(anyNumber),
      PhoneOperator.isEmpty => {
        'not': [at(anyNumber)],
      },
    };
  }
}
