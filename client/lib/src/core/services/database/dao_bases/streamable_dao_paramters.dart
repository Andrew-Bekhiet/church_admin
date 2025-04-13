import 'package:church_admin/church_admin.dart';

class StreamableDAOParameters<T, TBoolExp, TOrderByExp> {
  final String? search;
  final List<TBoolExp> where;
  final List<TOrderByExp> orderBy;

  const StreamableDAOParameters({
    this.search,
    this.where = const [],
    this.orderBy = const [],
  });

  StreamableDAOParameters<T, TBoolExp, TOrderByExp> copyWith({
    String? search,
    List<TBoolExp>? where,
    List<TOrderByExp>? orderBy,
  }) {
    return StreamableDAOParameters(
      search: search ?? this.search,
      where: where ?? this.where,
      orderBy: orderBy ?? this.orderBy,
    );
  }

  Json toJson() {
    return {
      'search': search,
      'where': where.map((e) => (e as dynamic).toJson()).toList(),
      'orderBy': orderBy.map((e) => (e as dynamic).toJson()).toList(),
    };
  }
}
