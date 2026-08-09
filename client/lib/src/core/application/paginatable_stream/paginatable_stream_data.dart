import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaginatableStreamData<T> with Equatable {
  final List<T> items;
  final T? cursor;
  final int? totalCount;

  bool get hasMore => cursor != null;

  @override
  List<Object?> get props => [items, cursor, totalCount];

  const PaginatableStreamData({
    required this.items,
    this.cursor,
    this.totalCount,
  });
}
