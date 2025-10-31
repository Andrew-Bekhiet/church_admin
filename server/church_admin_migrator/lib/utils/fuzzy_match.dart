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
  double levenshteinSimilarity(String other) {
    if (this == other) return 1.0;
    if (isEmpty || other.isEmpty) return 0.0;

    final distance = _levenshteinDistance(this, other);
    final maxLength = max(length, other.length);

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

  int _levenshteinDistance(String s1, String s2) {
    final len1 = s1.length;
    final len2 = s2.length;

    // Create a matrix to store distances
    final matrix = List.generate(
      len1 + 1,
      (i) => List<int>.filled(len2 + 1, 0),
    );

    // Initialize first row and column
    for (int i = 0; i <= len1; i++) {
      matrix[i][0] = i;
    }
    for (int j = 0; j <= len2; j++) {
      matrix[0][j] = j;
    }

    // Calculate distances
    for (int i = 1; i <= len1; i++) {
      for (int j = 1; j <= len2; j++) {
        final cost = s1[i - 1] == s2[j - 1] ? 0 : 1;

        matrix[i][j] = min(
          min(
            matrix[i - 1][j] + 1, // deletion
            matrix[i][j - 1] + 1, // insertion
          ),
          matrix[i - 1][j - 1] + cost, // substitution
        );
      }
    }

    return matrix[len1][len2];
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

/// Multi-property weighted similarity for person matching
class PersonSimilarity {
  final String? name1;
  final String? name2;
  final DateTime? birthdate1;
  final DateTime? birthdate2;
  final String? phone1;
  final String? phone2;
  final String? address1;
  final String? address2;

  PersonSimilarity({
    this.name1,
    this.name2,
    this.birthdate1,
    this.birthdate2,
    this.phone1,
    this.phone2,
    this.address1,
    this.address2,
  });

  /// Calculate weighted similarity score (0.0 to 1.0)
  /// Weights: birthdate=3, phone=3, name=2.5, address=2
  /// Returns 1.0 (100%) when all properties match
  double calculate() {
    double totalWeight = 0;
    double totalScore = 0;

    // First Name comparison (weight: 2.7)
    if (name1 != null && name2 != null) {
      final nameScore = name1!
          .split(' ')
          .first
          .normalize()
          .levenshteinSimilarity(name2!.split(' ').first.normalize());
      totalScore += nameScore * 2.6;
      totalWeight += 2.6;
    }

    // Name comparison (weight: 2.5)
    if (name1 != null && name2 != null) {
      final nameScore = name1!.normalize().levenshteinSimilarity(
        name2!.normalize(),
      );
      totalScore += nameScore * 2.5;
      totalWeight += 2.5;
    }

    // Birthdate comparison (weight: 3)
    if (birthdate1 != null && birthdate2 != null) {
      final birthdateScore = birthdate1!.birthdateSimilarity(birthdate2!);
      totalScore += birthdateScore * 3;
      totalWeight += 3;
    }

    // Phone comparison (weight: 3)
    if (phone1 != null && phone2 != null) {
      final normalizedPhone1 = _normalizePhone(phone1!);
      final normalizedPhone2 = _normalizePhone(phone2!);

      // Exact match for phones after normalization
      final phoneScore = normalizedPhone1 == normalizedPhone2 ? 1.0 : 0.0;
      totalScore += phoneScore * 3;
      totalWeight += 3;
    }

    // Address comparison (weight: 2)
    if (address1 != null && address2 != null) {
      final addressScore = address1!.normalize().jaroWinklerSimilarity(
        address2!.normalize(),
      );
      totalScore += addressScore * 2.5;
      totalWeight += 2.5;
    }

    // Return normalized score (0.0 to 1.0)
    return totalWeight > 0 ? totalScore / totalWeight : 0.0;
  }

  /// Normalize phone number by removing non-digit characters
  String _normalizePhone(String phone) {
    return phone.replaceAll(RegExp(r'\D'), '');
  }
}
