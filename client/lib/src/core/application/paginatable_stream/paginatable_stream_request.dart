import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaginatableStreamRequest<T, P> with Equatable {
  final T? cursor;
  final P? param;
  final int pageIndex;
  final int pageSize;

  @override
  List<Object?> get props => [cursor, param, pageIndex, pageSize];

  const PaginatableStreamRequest({
    required this.pageIndex,
    required this.pageSize,
    this.cursor,
    this.param,
  });
}
