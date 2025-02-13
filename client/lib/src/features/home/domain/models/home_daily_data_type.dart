enum HomeDailyDataType {
  verse('الآية', 'آية'),
  sneksar('السنكسار', 'سنكسار'),
  saying('أقوال أباء', 'مقولة');

  final String title;
  final String label;

  const HomeDailyDataType(this.title, this.label);
}
