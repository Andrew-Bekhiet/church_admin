enum OperatorFamily {
  birthday(['BirthdayOperator']),
  boolean(['BooleanOperator']),
  primitive(['PrimitiveOperator']),
  string(['StringOperator']),
  color(['ColorOperator']),
  gender(['GenderOperator']),
  dateTime(['DateTimeOperator', 'DateRangeOperator']),
  spatial(['SpatialOperator']),
  multiSelect(['MultiSelectOperator']);

  final List<String> operatorEnums;

  const OperatorFamily(this.operatorEnums);
}
