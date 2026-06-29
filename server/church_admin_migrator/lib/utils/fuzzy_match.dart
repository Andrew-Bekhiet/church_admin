import 'dart:math';

import 'package:church_admin_migrator/utils/normalize_string.dart';

extension FuzzyMatchString on String {
  /// Jaro-Winkler similarity (0.0 to 1.0)
  /// Good for typos and short variations, gives weight to matching prefixes
  double jaroWinklerSimilarity(String other) {
    if (this == other) return 1.0;
    if (isEmpty || other.isEmpty) return 0.0;

    // Calculate Jaro distance
    final jaroDistance = _jaroDistance(this, other);

    // Calculate common prefix length (up to 4 characters)
    int prefixLength = 0;
    final maxPrefixLength = min(min(length, other.length), 4);

    for (int i = 0; i < maxPrefixLength; i++) {
      if (this[i] == other[i]) {
        prefixLength++;
      } else {
        break;
      }
    }

    // Apply Winkler modification
    const p = 0.1; // scaling factor (standard value)
    return jaroDistance + (prefixLength * p * (1 - jaroDistance));
  }

  /// Levenshtein-based similarity (0.0 to 1.0)
  /// Better for distinguishing similar names with different key components
  ///
  /// When [threshold] is provided the computation may short-circuit: if the
  /// length difference alone makes [threshold] unreachable, or the running
  /// edit distance exceeds the budget implied by [threshold], it returns 0.0
  /// instead of finishing the full matrix. Callers that immediately filter on
  /// `>= threshold` get identical results far more cheaply.
  double levenshteinSimilarity(String other, {double threshold = 0.0}) {
    if (this == other) return 1.0;
    if (isEmpty || other.isEmpty) return 0.0;

    final maxLength = max(length, other.length);

    // The minimum possible edit distance is the length difference, so the
    // maximum possible similarity is bounded by it. Bail out early when even
    // the best case cannot reach the requested threshold. The epsilon keeps a
    // pair whose similarity exactly equals the threshold (which floating-point
    // rounding can otherwise push just under it).
    const epsilon = 1e-9;
    if (threshold > 0.0) {
      final lengthDiff = (length - other.length).abs();
      if (1.0 - (lengthDiff / maxLength) < threshold - epsilon) return 0.0;
    }

    final maxDistance = threshold > 0.0
        ? ((1.0 - threshold) * maxLength + epsilon).floor()
        : null;

    final distance = _levenshteinDistance(
      this,
      other,
      maxDistance: maxDistance,
    );

    if (maxDistance != null && distance > maxDistance) return 0.0;

    return 1.0 - (distance / maxLength);
  }

  /// Hybrid similarity combining character-level and word-level comparison (0.0 to 1.0)
  /// Best for names with common prefixes but different key words (e.g., church/saint names)
  double hybridSimilarity(String other, {double charWeight = 0.7}) {
    if (this == other) return 1.0;
    if (isEmpty || other.isEmpty) return 0.0;

    // Character-level similarity using Levenshtein
    final distance = _levenshteinDistance(this, other);
    final maxLength = max(length, other.length);
    final charSimilarity = 1.0 - (distance / maxLength);

    // Word-level similarity
    final words1 = split(' ').where((w) => w.isNotEmpty).toSet();
    final words2 = other.split(' ').where((w) => w.isNotEmpty).toSet();

    if (words1.isEmpty || words2.isEmpty) {
      return charSimilarity;
    }

    final commonWords = words1.intersection(words2).length;
    final totalWords = max(words1.length, words2.length);
    final wordSimilarity = commonWords / totalWords;

    return charSimilarity * charWeight + wordSimilarity * (1 - charWeight);
  }

  double _jaroDistance(String s1, String s2) {
    final len1 = s1.length;
    final len2 = s2.length;

    // Calculate match window
    final matchWindow = (max(len1, len2) / 2).floor() - 1;
    if (matchWindow < 0) return 0.0;

    final s1Matches = List<bool>.filled(len1, false);
    final s2Matches = List<bool>.filled(len2, false);

    int matches = 0;
    int transpositions = 0;

    // Find matches
    for (int i = 0; i < len1; i++) {
      final start = max(0, i - matchWindow);
      final end = min(i + matchWindow + 1, len2);

      for (int j = start; j < end; j++) {
        if (s2Matches[j] || s1[i] != s2[j]) continue;
        s1Matches[i] = true;
        s2Matches[j] = true;
        matches++;
        break;
      }
    }

    if (matches == 0) return 0.0;

    // Find transpositions
    int k = 0;
    for (int i = 0; i < len1; i++) {
      if (!s1Matches[i]) continue;
      while (!s2Matches[k]) {
        k++;
      }

      if (s1[i] != s2[k]) transpositions++;
      k++;
    }

    // Calculate Jaro distance
    return (matches / len1 +
            matches / len2 +
            (matches - transpositions / 2) / matches) /
        3;
  }

  /// Edit distance using two rolling rows (O(min(m, n)) memory instead of the
  /// full matrix). When [maxDistance] is provided, the loop aborts as soon as
  /// every cell in a row exceeds it, returning `maxDistance + 1` as a sentinel
  /// "too far" value.
  int _levenshteinDistance(String s1, String s2, {int? maxDistance}) {
    // Work with the shorter string as the inner dimension to minimise memory.
    if (s1.length < s2.length) {
      final tmp = s1;
      s1 = s2;
      s2 = tmp;
    }

    final len1 = s1.length;
    final len2 = s2.length;

    if (len2 == 0) return len1;

    var previous = List<int>.generate(len2 + 1, (j) => j, growable: false);
    var current = List<int>.filled(len2 + 1, 0);

    for (int i = 1; i <= len1; i++) {
      current[0] = i;
      int rowMin = current[0];
      final c1 = s1.codeUnitAt(i - 1);

      for (int j = 1; j <= len2; j++) {
        final cost = c1 == s2.codeUnitAt(j - 1) ? 0 : 1;

        final deletion = previous[j] + 1;
        final insertion = current[j - 1] + 1;
        final substitution = previous[j - 1] + cost;

        int value = deletion < insertion ? deletion : insertion;
        if (substitution < value) value = substitution;

        current[j] = value;
        if (value < rowMin) rowMin = value;
      }

      if (maxDistance != null && rowMin > maxDistance) {
        return maxDistance + 1;
      }

      final tmp = previous;
      previous = current;
      current = tmp;
    }

    return previous[len2];
  }
}

extension FuzzyMatchDateTime on DateTime {
  /// Component-wise birthdate similarity (0.0 to 1.0)
  /// Compares day, month, and year with tolerance
  /// - Day tolerance: 7 days (10% of ~30 days)
  /// - Month tolerance: 1 month (10% of 12 months)
  /// - Year tolerance: 1 year
  double birthdateSimilarity(DateTime other) {
    // Day similarity (tolerance of 7 days)
    final dayDiff = (day - other.day).abs();
    final daySimilarity = dayDiff <= 7 ? 1.0 - (dayDiff / 7) : 0.0;

    // Month similarity (tolerance of 1 month)
    final monthDiff = (month - other.month).abs();
    final monthSimilarity = monthDiff <= 1 ? 1.0 - monthDiff : 0.0;

    // Year similarity (tolerance of 1 year)
    final yearDiff = (year - other.year).abs();
    final yearSimilarity = yearDiff <= 1 ? 1.0 - yearDiff : 0.0;

    // Equal weight for each component
    return (daySimilarity + monthSimilarity + yearSimilarity) / 3;
  }
}

/// Multi-property weighted similarity for person matching.
///
/// All string inputs are expected to be **pre-normalized** by the caller
/// (names via [NormalizeString.normalize], phones reduced to digits only).
/// This keeps the normalization out of the per-comparison hot path, since a
/// single incoming person is scored against many candidates.
class PersonSimilarity {
  /// Normalized first name (first whitespace-separated token).
  final String? firstName1;
  final String? firstName2;

  /// Normalized full name.
  final String? name1;
  final String? name2;

  final DateTime? birthdate1;
  final DateTime? birthdate2;

  /// Digits-only phone numbers.
  final String? phoneDigits1;
  final String? phoneDigits2;

  /// Normalized address text.
  final String? address1;
  final String? address2;

  PersonSimilarity({
    this.firstName1,
    this.firstName2,
    this.name1,
    this.name2,
    this.birthdate1,
    this.birthdate2,
    this.phoneDigits1,
    this.phoneDigits2,
    this.address1,
    this.address2,
  });

  /// Calculate weighted similarity score (0.0 to 1.0)
  /// Weights: birthdate=3, phone=3, first name=2.6, name=2.5, address=2.5
  /// Returns 1.0 (100%) when all properties match
  double calculate() {
    double totalWeight = 0;
    double totalScore = 0;

    // First name comparison (weight: 2.6)
    if (firstName1 != null && firstName2 != null) {
      totalScore += firstName1!.levenshteinSimilarity(firstName2!) * 2.6;
      totalWeight += 2.6;
    }

    // Full name comparison (weight: 2.5)
    if (name1 != null && name2 != null) {
      totalScore += name1!.levenshteinSimilarity(name2!) * 2.5;
      totalWeight += 2.5;
    }

    // Birthdate comparison (weight: 3)
    if (birthdate1 != null && birthdate2 != null) {
      totalScore += birthdate1!.birthdateSimilarity(birthdate2!) * 3;
      totalWeight += 3;
    }

    // Phone comparison (weight: 3) — exact match after digit normalization
    if (phoneDigits1 != null &&
        phoneDigits1!.isNotEmpty &&
        phoneDigits2 != null &&
        phoneDigits2!.isNotEmpty) {
      totalScore += (phoneDigits1 == phoneDigits2 ? 1.0 : 0.0) * 3;
      totalWeight += 3;
    }

    // Address comparison (weight: 2.5)
    if (address1 != null &&
        address1!.isNotEmpty &&
        address2 != null &&
        address2!.isNotEmpty) {
      totalScore += address1!.jaroWinklerSimilarity(address2!) * 2.5;
      totalWeight += 2.5;
    }

    // Return normalized score (0.0 to 1.0)
    return totalWeight > 0 ? totalScore / totalWeight : 0.0;
  }
}
