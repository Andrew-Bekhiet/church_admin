import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class StreamableDAOParameters<T> with Equatable {
  final String? search;
  final List<Filter>? where;
  final List<OrderBy>? orderBy;
  final FieldMetadata? secondLineField;

  ListArrangement get arrangement => ListArrangement(
    orderBy: orderBy ?? const [],
    secondLineField: secondLineField,
  );

  @override
  List<Object?> get props => [search, where, orderBy, secondLineField];

  const StreamableDAOParameters({
    this.search,
    this.where,
    this.orderBy,
    this.secondLineField,
  });

  StreamableDAOParameters<T> copyWith({
    String? search,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    FieldMetadata? secondLineField,
  }) {
    return StreamableDAOParameters(
      search: search ?? this.search,
      where: where ?? this.where,
      orderBy: orderBy ?? this.orderBy,
      secondLineField: secondLineField ?? this.secondLineField,
    );
  }
}
