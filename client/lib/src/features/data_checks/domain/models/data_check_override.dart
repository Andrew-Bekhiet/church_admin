enum DataCheckOverride {
  none('تلقائي'),
  markedComplete('مكتملة'),
  markedIncomplete('غير مكتملة');

  final String label;

  bool? get asBoolean => switch (this) {
    none => null,
    markedComplete => true,
    markedIncomplete => false,
  };

  const DataCheckOverride(this.label);

  static DataCheckOverride fromBoolean(bool? value) => switch (value) {
    null => none,
    true => markedComplete,
    false => markedIncomplete,
  };
}
