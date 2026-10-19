import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// One `{type, id, op}` entry of a change feed push. `id` is the GraphQL id
/// of the changed record, or null when a whole type changed (a view or a
/// truncate). `op` is kept as sent; matching never depends on it.
@immutable
class EntityChange with Equatable {
  static const viewerScopeType = 'ViewerScope';

  final String type;
  final String? id;
  final String op;

  @override
  List<Object?> get props => [type, id, op];

  const EntityChange({required this.type, required this.id, required this.op});

  factory EntityChange.fromJson(Json json) => EntityChange(
    type: json['type'] as String,
    id: json['id'] as String?,
    op: json['op'] as String? ?? '',
  );

  bool affectsViewer(String? viewerUserId) =>
      type == viewerScopeType && (id == null || id == viewerUserId);
}
