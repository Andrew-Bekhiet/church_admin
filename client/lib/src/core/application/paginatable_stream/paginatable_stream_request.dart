import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaginatableStreamRequest<T> with EquatableMixin {
  final T? cursor;
  final String? search;
  final int pageIndex;
  final int pageSize;

  const PaginatableStreamRequest({
    required this.pageIndex,
    required this.pageSize,
    this.cursor,
    this.search,
  });

  @override
  List<Object?> get props => [cursor, search, pageIndex, pageSize];
}
