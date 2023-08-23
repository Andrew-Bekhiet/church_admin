import 'package:church_admin/church_admin.dart';

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
  stDWithin('_stDWithin', 'بالقرب من .. بمسافة ..'),
  stIntersects('_stIntersects', 'يتقاطع مع');

  final String value;
  final String label;

  const Operator(this.value, this.label);

  bool isValidType<T>(T object) {
    switch (this) {
      case Operator.isNull:
        return object is! ViewableWithID &&
            object is! Point &&
            object is! Line &&
            object is! Polygon;

      case Operator.eq ||
            Operator.gt ||
            Operator.gte ||
            Operator.lt ||
            Operator.lte ||
            Operator.neq:
        return object is! ViewableWithID &&
            object is! Point &&
            object is! Line &&
            object is! Polygon;

      case Operator.$in || Operator.nin:
        return object is! ViewableWithID &&
            object is! Point &&
            object is! Line &&
            object is! Polygon;

      case Operator.ilike ||
            Operator.iregex ||
            Operator.like ||
            Operator.nilike ||
            Operator.niregex ||
            Operator.nlike ||
            Operator.nregex ||
            Operator.regex:
        return object is String;

      case Operator.stDWithin || Operator.stIntersects:
        return object is Point || object is Line || object is Polygon;

      default:
        return false;
    }
  }
}
