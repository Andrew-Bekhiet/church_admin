import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  ShareService({
    this.projectId = 'church_admin',
    this.uriPrefix = 'churchadmin.page.link',
    String? packageName,
    Uri? fallbackUrl,
  })  : packageName =
            packageName ?? 'com.AndroidQuartz.' + projectId.toLowerCase(),
        androidParameters = AndroidParameters(
          packageName:
              packageName ?? 'com.AndroidQuartz.' + projectId.toLowerCase(),
          fallbackUrl: fallbackUrl ??
              Uri.parse(
                'https://github.com/Andrew-Bekhiet/' +
                    projectId +
                    '/releases/latest',
              ),
        ),
        iosParameters = IOSParameters(
          bundleId:
              packageName ?? 'com.AndroidQuartz.' + projectId.toLowerCase(),
        );

  final String projectId;
  final String uriPrefix;
  final IOSParameters iosParameters;
  final String packageName;
  final AndroidParameters androidParameters;

  Future<void> shareText(String text) async {
    await Share.share(text);
  }
}
