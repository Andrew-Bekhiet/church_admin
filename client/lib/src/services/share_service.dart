// ignore_for_file: deprecated_member_use
// TODO: replace Firebase Dynamic Links

import 'package:church_admin/church_admin.dart';
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
        ),
        _firebaseDynamicLinks =
            firebaseDynamicLinksProvider.read(globalProviderContainer);

  final String projectId;
  final String uriPrefix;
  final IOSParameters iosParameters;
  final String packageName;
  final AndroidParameters androidParameters;

  final FirebaseDynamicLinks _firebaseDynamicLinks;

  Future<Uri> sharePerson(Person person) async {
    return (await _firebaseDynamicLinks.buildShortLink(
      DynamicLinkParameters(
        uriPrefix: uriPrefix,
        link: Uri.https(
          projectId.toLowerCase() + '.com',
          'PersonInfo',
          {'Id': person.id},
        ),
        androidParameters: androidParameters,
        iosParameters: iosParameters,
      ),
      shortLinkType: ShortDynamicLinkType.unguessable,
    ))
        .shortUrl;
  }

  Future<Uri> shareUser(User user) async {
    return (await _firebaseDynamicLinks.buildShortLink(
      DynamicLinkParameters(
        uriPrefix: uriPrefix,
        link: Uri.https(
          projectId + '.com',
          'UserInfo',
          {'UID': user.uid},
        ),
        androidParameters: androidParameters,
        iosParameters: iosParameters,
      ),
      shortLinkType: ShortDynamicLinkType.unguessable,
    ))
        .shortUrl;
  }

  Future<Uri> shareObject<T>(T object) async {
    switch (object) {
      case Person _:
        return sharePerson(object);
      case User _:
        return shareUser(object);
      default:
        throw UnimplementedError(
          'Expected an object of type PersonBase, UserBase or QuerInfo, but instead got type' +
              object.runtimeType.toString(),
        );
    }
  }

  Future<void> shareText(String text) async {
    await Share.share(text);
  }
}
