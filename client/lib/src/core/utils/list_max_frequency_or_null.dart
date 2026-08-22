extension ListMaxFrequencyOrNull<T> on List<T> {
  /// Returns the most frequent element in the list or null if the list is empty.
  T? get maxFrequencyOrNull {
    if (isEmpty) return null;

    final frequencyMap = <T, int>{};
    for (final element in this) {
      frequencyMap[element] = (frequencyMap[element] ?? 0) + 1;
    }

    return frequencyMap.entries.reduce((a, b) => a.value > b.value ? a : b).key;
  }
}
