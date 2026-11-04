import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class LiveResult with Equatable {
  final String ref;

  const LiveResult(this.ref);

  factory LiveResult.fromJson(Json json) {
    final ref = json['ref'] as String;
    if (json['full'] == true) {
      return FullLiveResult(
        ref: ref,
        data: (json['data'] as Map).cast<String, dynamic>(),
      );
    }

    return ListDeltaLiveResult(
      ref: ref,
      rows: [
        for (final row in json['rows'] as List? ?? const [])
          (row as Map).cast<String, dynamic>(),
      ],
      order: (json['order'] as List?)?.cast<String>(),
      count: json['count'] as int?,
      endKeyset: json['endKeyset'] as String?,
    );
  }
}

class FullLiveResult extends LiveResult {
  final Json data;

  @override
  List<Object?> get props => [ref, data];

  const FullLiveResult({required String ref, required this.data}) : super(ref);
}

/// The rows of a list window that changed or are new to the socket. A null
/// [order] means the window's membership and order are unchanged; a null
/// [count] or [endKeyset] means it did not change.
class ListDeltaLiveResult extends LiveResult {
  final List<Json> rows;
  final List<String>? order;
  final int? count;
  final String? endKeyset;

  @override
  List<Object?> get props => [ref, rows, order, count, endKeyset];

  const ListDeltaLiveResult({
    required String ref,
    required this.rows,
    this.order,
    this.count,
    this.endKeyset,
  }) : super(ref);
}
