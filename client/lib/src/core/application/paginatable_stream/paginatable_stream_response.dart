import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaginatableStreamResponse<T> with Equatable {
  final List<T> data;
  final int? totalCount;
  final T? cursor;

  const PaginatableStreamResponse({
    required this.data,
    this.totalCount,
    this.cursor,
  });

  @override
  List<Object?> get props => [data, totalCount, cursor];
}
