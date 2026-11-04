import 'package:church_admin/church_admin.dart';

enum DownloadPlatform {
  android(Enum_AppPlatform.ANDROID),
  ios(Enum_AppPlatform.IOS);

  final Enum_AppPlatform backendPlatform;

  const DownloadPlatform(this.backendPlatform);
}
