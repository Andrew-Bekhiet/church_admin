enum Operator {
  lt('_lt', '<'),
  lte('_lte', '<='),
  dateLt('_lt', 'قبل'),
  dateLte('_lte', 'قبل أو يساوي'),
  eq('_eq', 'يساوي'),
  dateEq('_eq', 'في نفس الوقت'),
  neq('_neq', 'لا يساوي'),
  dateNeq('_eq', 'ليس في نفس الوقت'),
  gt('_gt', '>'),
  gte('_gte', '>='),
  dateGt('_gt', 'بعد'),
  dateGte('_gte', 'بعد أو يساوي'),
  ilike('_ilike', 'يشبه'),
  nilike('_nilike', 'لا يشبه'),
  regex('_regex', 'regex'),
  nregex('_nregex', '!regex'),
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
    Operator.ilike,
    Operator.nilike,
    Operator.regex,
    Operator.nregex,
  };

  static const Set<Operator> comparitive = {
    Operator.eq,
    Operator.neq,
    Operator.lt,
    Operator.lte,
    Operator.gt,
    Operator.gte,
  };

  static const Set<Operator> dateComparitive = {
    Operator.dateLt,
    Operator.dateLte,
    Operator.dateEq,
    Operator.dateNeq,
    Operator.dateGt,
    Operator.dateGte,
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
