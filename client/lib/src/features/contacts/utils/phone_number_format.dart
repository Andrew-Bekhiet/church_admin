abstract final class PhoneNumberFormat {
  static String searchFragment(String typed) {
    final compact = typed.replaceAll(RegExp(r'[\s\-.()]'), '');

    return switch (compact) {
      final international when international.startsWith('+') => international,
      final prefixed when prefixed.startsWith('00') =>
        '+${prefixed.substring(2)}',
      final national when national.startsWith('0') => national.substring(1),
      final digits => digits,
    };
  }

  static String storedLikePattern(String likePattern) {
    final fragment = searchFragment(likePattern.replaceAll('%', ''));
    final anchoredAtStart = !likePattern.startsWith('%');
    final stored = anchoredAtStart && !fragment.startsWith('+')
        ? '+20$fragment'
        : fragment;

    return '${anchoredAtStart ? '' : '%'}$stored${likePattern.endsWith('%') ? '%' : ''}';
  }
}
