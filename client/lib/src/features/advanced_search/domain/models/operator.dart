enum Operator {
  eq('_eq', '='),
  gt('_gt', '>'),
  gte('_gte', '>='),
  lt('_lt', '<'),
  lte('_lte', '<='),
  neq('_neq', 'لا يساوي'),
  like('_like', 'يشبه'),
  ilike('_ilike', 'يشبه (case insensitive)'),
  nlike('_nlike', 'لا يشبه'),
  nilike('_nilike', 'لا يشبه (case insensitive)'),
  regex('_regex', 'regex'),
  nregex('_nregex', '!regex'),
  iregex('_iregex', 'iregex'),
  niregex('_niregex', '!iregex'),
  isNull('_isNull', 'فارغ'),
  $in('_in', 'يساوي أي من'),
  nin('_nin', 'لا يساوي أي من'),
  stIntersects('_stIntersects', 'يتقاطع مع');

  static const Set<Operator> advanced = {
    Operator.nilike,
    Operator.regex,
    Operator.nregex,
  };

  static const Set<Operator> textual = {
    Operator.like,
    Operator.ilike,
    Operator.nlike,
    Operator.nilike,
    Operator.regex,
    Operator.nregex,
    Operator.iregex,
    Operator.niregex,
  };

  static const Set<Operator> comparitive = {
    Operator.eq,
    Operator.gt,
    Operator.gte,
    Operator.lt,
    Operator.lte,
    Operator.neq,
  };

  static const Set<Operator> arrays = {
    Operator.$in,
    Operator.nin,
  };

  static const Set<Operator> spatial = {
    Operator.stIntersects,
  };

  final String value;
  final String label;

  const Operator(this.value, this.label);
}
