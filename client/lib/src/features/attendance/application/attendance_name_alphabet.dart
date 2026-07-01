/// Maps Arabic person names onto a stable alphabet used by the name-jump gutter.
///
/// Encapsulates first-letter normalization and alphabetical ordering so the rest
/// of the feature never deals with raw letter math.
final class AttendanceNameAlphabet {
  const AttendanceNameAlphabet();

  static const String _other = '#';

  static const List<String> _letters = [
    'ا',
    'ب',
    'ت',
    'ث',
    'ج',
    'ح',
    'خ',
    'د',
    'ذ',
    'ر',
    'ز',
    'س',
    'ش',
    'ص',
    'ض',
    'ط',
    'ظ',
    'ع',
    'غ',
    'ف',
    'ق',
    'ك',
    'ل',
    'م',
    'ن',
    'ه',
    'و',
    'ي',
  ];

  /// The normalized first letter a name is bucketed under.
  String firstLetterOf(String name) {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return _other;
    return trimmed
        .substring(0, 1)
        .replaceAll(RegExp('[أإآ]'), 'ا')
        .replaceAll('ة', 'ه')
        .replaceAll('ى', 'ي');
  }

  /// The ordered, de-duplicated first letters present across [names].
  List<String> lettersFrom(Iterable<String> names) {
    final present = names.map(firstLetterOf).toSet();
    final ordered = _letters.where(present.contains).toList();
    final others = present.where((l) => !_letters.contains(l)).toList()..sort();
    return [...ordered, ...others];
  }
}
