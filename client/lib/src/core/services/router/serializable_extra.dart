import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SerializableExtra implements ToJson {
  String get typeName;
  const SerializableExtra();

  @override
  Json toJson();
}
