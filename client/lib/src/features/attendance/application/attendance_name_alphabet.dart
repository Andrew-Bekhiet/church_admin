import 'package:collection/collection.dart';

/// Maps Arabic person names onto a stable alphabet used by the name-jump gutter.
///
/// Encapsulates first-letter normalization and alphabetical ordering so the rest
/// of the feature never deals with raw letter math.
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

  /// The normalized first letter a name is bucketed under.
  String normalizedFirstLetterOf(String name) {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return _other;

    final firstLetter = trimmed.substring(0, 1);

    return _normalize(firstLetter);
  }

  String _normalize(String letter) {
    return letter
        .toLowerCase()
        .replaceAll(RegExp('[أإآ]'), 'ا')
        .replaceAll('ة', 'ه')
        .replaceAll('ى', 'ي');
  }

  /// Builds the gutter index from [entries] in display order. An entry whose
  /// [nameOf] maps to a letter not yet seen becomes the anchor for that letter.
  /// Entries for which [navigable] returns false are skipped as anchors: their
  /// letter won't appear in the gutter even if it would otherwise be new.
  ///
  /// Returns `firstIndexByLetter` mapping each letter to its first navigable
  /// position in the original [entries] list
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
    return letters.sorted((a, b) {
      final aIsStandard = _letters.contains(a);
      final bIsStandard = _letters.contains(b);

      if (aIsStandard && bIsStandard) {
        return 0;
      }

      if (aIsStandard) {
        return -1;
      }

      return 1;
    });
  }
}
