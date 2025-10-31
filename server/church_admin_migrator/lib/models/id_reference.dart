import 'package:dart_firebase_admin/firestore.dart';
import 'package:equatable/equatable.dart';

class IdReference with EquatableMixin {
  static final Map<String, IdReference> _instances = {};

  final String id;
  final String collection;

  IdReference._new({required this.id, required this.collection});

  factory IdReference.fromPath(String path) {
    final parts = path.trim().split('/');
    if (parts.length != 2) {
      throw ArgumentError('Invalid path: $path');
    }

    final instance = _instances[path.trim()];
    if (instance != null) {
      return instance;
    }

    return IdReference._new(collection: parts[0], id: parts[1]);
  }

  String get path => '$collection/$id';

  @override
  List<Object?> get props => [id, collection];
}

extension ToIdReference on DocumentReference {
  IdReference toIdReference() {
    return IdReference.fromPath(path);
  }
}
