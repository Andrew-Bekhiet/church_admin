class StreamableDAOParameters<T, TBoolExp, TOrderByExp> {
  final String? search;
  final List<TBoolExp>? where;
  final List<TOrderByExp>? orderBy;

  const StreamableDAOParameters({
    this.search,
    this.where,
    this.orderBy,
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
}
