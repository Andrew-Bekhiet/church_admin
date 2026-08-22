import 'package:church_admin/church_admin.dart';

class StreamableDAOParameters<T> {
  final String? search;
  final List<Filter>? where;
  final List<OrderBy>? orderBy;

  const StreamableDAOParameters({
    this.search,
    this.where,
    this.orderBy,
  });

  StreamableDAOParameters<T> copyWith({
    String? search,
    List<Filter>? where,
    List<OrderBy>? orderBy,
  }) {
    return StreamableDAOParameters(
      search: search ?? this.search,
      where: where ?? this.where,
      orderBy: orderBy ?? this.orderBy,
    );
  }
}
