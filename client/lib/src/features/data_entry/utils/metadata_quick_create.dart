import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart';

class MetadataQuickCreate {
  static Future<Church> church(String name) =>
      DatabaseService.I.metadata.churches.createObject(
        newObject: Church(id: const Uuid().v4(), name: name),
      );
}
