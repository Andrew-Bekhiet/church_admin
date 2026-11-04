import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class LiveRegistration with Equatable {
  final String ref;
  final LiveQueryRequest request;

  @override
  List<Object?> get props => [ref, request];

  const LiveRegistration({required this.ref, required this.request});

  Json toJson() => {
    'ref': ref,
    'document': request.document,
    'operationName': request.operationName,
    'variables': request.variables,
    'window': request.window?.toJson(),
    'resultHashes': request.resultHashes,
  };
}
