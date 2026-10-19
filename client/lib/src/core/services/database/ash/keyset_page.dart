import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class KeysetPage<T> with Equatable {
  final List<T> items;
  final int? count;
  final String? endKeyset;

  @override
  List<Object?> get props => [items, count, endKeyset];

  const KeysetPage({required this.items, this.count, this.endKeyset});
}
