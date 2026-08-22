extension MapMaxOrNull<T> on Map<T, List> {
  T? get maxOrNull {
    if (isEmpty) return null;
    var value = entries.first;
    for (final element in entries) {
      final newValue = element;
      if (newValue.value.length > value.value.length) {
        value = newValue;
      }
    }

    return value.key;
  }
}
