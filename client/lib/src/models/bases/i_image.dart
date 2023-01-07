import 'package:church_admin/church_admin.dart';

abstract class IImage {
  ObjectImageInfo? get imageInfo;

  bool get hasImage => imageInfo != null;
}
