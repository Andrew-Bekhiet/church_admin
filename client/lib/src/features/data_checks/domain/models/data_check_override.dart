enum DataCheckOverride {
  automatic('تلقائي'),
  markedComplete('مكتملة'),
  markedIncomplete('غير مكتملة');

  final String label;

  bool? get userOverride => switch (this) {
    automatic => null,
    markedComplete => true,
    markedIncomplete => false,
  };

  const DataCheckOverride(this.label);

  static DataCheckOverride fromUserOverride(bool? value) => switch (value) {
    null => automatic,
    true => markedComplete,
    false => markedIncomplete,
  };
}
