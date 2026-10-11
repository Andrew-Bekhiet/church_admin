enum DataCheckOverride {
  automatic('تلقائي'),
  markedComplete('مكتملة'),
  markedIncomplete('غير مكتملة');

  final String label;

  bool? get asBoolean => switch (this) {
    automatic => null,
    markedComplete => true,
    markedIncomplete => false,
  };

  const DataCheckOverride(this.label);

  static DataCheckOverride fromBoolean(bool? value) => switch (value) {
    null => automatic,
    true => markedComplete,
    false => markedIncomplete,
  };
}
