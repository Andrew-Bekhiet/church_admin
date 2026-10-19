import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

class StreamableDAOParameters<T> with Equatable {
  static Stream<StreamableDAOParameters<T>> combineLatest<T>({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => Rx.combineLatest4(
    searchQuery ?? Stream.value(null),
    where ?? Stream.value(null),
    orderBy ?? Stream.value(null),
    secondLineField ?? Stream.value(null),
    (search, where, orderBy, secondLineField) => StreamableDAOParameters<T>(
      search: search,
      where: where?.whereEnabled(),
      orderBy: orderBy?.whereEnabled(),
      secondLineField: switch (secondLineField) {
        final field? when field.isEnabled => field,
        _ => null,
      },
    ),
  );

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
