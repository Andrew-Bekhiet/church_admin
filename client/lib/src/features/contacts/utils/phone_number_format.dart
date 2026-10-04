abstract final class PhoneNumberFormat {
  static const _egyptCallingCode = '+20';

  static String normalizeForSearch(String searchString) =>
      switch (withoutSeparators(searchString)) {
        final international when international.startsWith('+') => international,
        final prefixed when prefixed.startsWith('00') =>
          '+${prefixed.substring(2)}',
        final national when national.startsWith('0') => national.substring(1),
        final digits => digits,
      };

  static String withoutSeparators(String searchString) =>
      searchString.replaceAll(RegExp(r'[\s\-.()]'), '');

  static String toInternationalStart(String searchString) =>
      switch (normalizeForSearch(searchString)) {
        final international when international.startsWith('+') => international,
        final national => '$_egyptCallingCode$national',
      };
}
