import 'package:church_admin/church_admin.dart';

abstract class ViewableWithIDAndImage extends ViewableWithID implements IImage {
  const ViewableWithIDAndImage();

  @override
  bool get hasImage => imageInfo.lastUpdatedTime != null;
}
