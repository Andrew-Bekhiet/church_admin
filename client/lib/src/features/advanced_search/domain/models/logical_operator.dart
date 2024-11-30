enum LogicalOperator {
  and('_and', 'و'),
  or('_or', 'أو'),
  not('_not', 'ليس');

  final String value;
  final String label;

  const LogicalOperator(this.value, this.label);
}
