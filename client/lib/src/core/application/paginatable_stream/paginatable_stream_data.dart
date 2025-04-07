import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaginatableStreamData<T> with EquatableMixin {
  final List<T> items;
  final T? cursor;
  final int? totalCount;

  const PaginatableStreamData({
    required this.items,
    this.cursor,
    this.totalCount,
  });

  bool get hasMore => cursor != null;

  @override
  List<Object?> get props => [items, cursor, totalCount];
}
