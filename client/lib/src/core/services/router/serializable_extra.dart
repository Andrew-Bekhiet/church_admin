import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SerializableExtra implements ToJson {
  const SerializableExtra();

  String get typeName;

  @override
  Json toJson();
}
