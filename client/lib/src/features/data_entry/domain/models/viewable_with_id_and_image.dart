import 'package:church_admin/church_admin.dart';

abstract class ViewableWithIDAndImage extends ViewableWithID implements IImage {
  @override
  bool get hasImage => imageInfo.lastUpdatedTime != null;
  const ViewableWithIDAndImage();
}
