import 'package:church_admin_migrator/models/app_context.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:equatable/equatable.dart';

class IdReference with EquatableMixin {
  static final Map<String, IdReference> _instances = {};

  final AppContext context;

  final String id;
  final String collection;

  IdReference._new({
    required this.context,
    required this.id,
    required this.collection,
  });

  factory IdReference.fromPath(String path, {required AppContext context}) {
    final parts = path.trim().split('/');
    if (parts.length != 2) {
      throw ArgumentError('Invalid path: $path');
    }

    final instance = _instances[path.trim()];
    if (instance != null) {
      if (instance.context != context) {
        throw ArgumentError('Context mismatch for path: $path');
      }

      return instance;
    }

    return IdReference._new(
      context: context,
      collection: parts[0],
      id: parts[1],
    );
  }

  String get path => '$collection/$id';

  @override
  List<Object?> get props => [id, collection];
}

extension ToIdReference on DocumentReference {
  IdReference toIdReference(AppContext context) {
    return IdReference.fromPath(path, context: context);
  }
}
