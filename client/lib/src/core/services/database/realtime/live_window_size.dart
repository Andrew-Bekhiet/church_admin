import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// How many rows a list window covers, and the size of the chunks the server
/// runs it in.
@immutable
class LiveWindowSize with Equatable {
  final int rows;
  final int chunk;

  @override
  List<Object?> get props => [rows, chunk];

  const LiveWindowSize({required this.rows, required this.chunk});

  Json toJson() => {'rows': rows, 'chunk': chunk};
}
