import 'package:collection/collection.dart';

final class AttendanceNameAlphabet {
  const AttendanceNameAlphabet();

  static const String _other = '#';

  static const Set<String> _letters = {
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
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  };

  String normalizedFirstLetterOf(String name) {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return _other;

    final firstLetter = trimmed.substring(0, 1);

    return _normalize(firstLetter);
  }

  String _normalize(String letter) {
    return letter
        .toUpperCase()
        .replaceAll(RegExp('[أإآ]'), 'ا')
        .replaceAll('ة', 'ه')
        .replaceAll('ى', 'ي');
  }

  Map<String, int> buildGutterLettersIndex<T>(
    List<T> entries, {
    required String Function(T) nameOf,
    required bool Function(T) navigable,
  }) {
    final firstIndexByLetter = <String, int>{};
    for (int i = 0; i < entries.length; i++) {
      final entry = entries[i];
      if (!navigable(entry)) continue;

      firstIndexByLetter.putIfAbsent(
        normalizedFirstLetterOf(nameOf(entry)),
        () => i,
      );
    }

    return firstIndexByLetter;
  }

  List<String> sortGutterLettersFirst(List<String> letters) {
    final standardOrder = _letters.toList();

    return letters.sorted((a, b) {
      final aIndex = standardOrder.indexOf(a);
      final bIndex = standardOrder.indexOf(b);

      if (aIndex != -1 && bIndex != -1) {
        return aIndex.compareTo(bIndex);
      }

      if (aIndex != -1) {
        return -1;
      }

      if (bIndex != -1) {
        return 1;
      }

      return a.compareTo(b);
    });
  }
}
