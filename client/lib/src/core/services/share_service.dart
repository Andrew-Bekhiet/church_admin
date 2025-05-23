import 'package:church_admin/church_admin.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  static ShareService get I =>
      globalProviderContainer.read(shareServiceProvider);

  const ShareService();

  Future<void> shareText(String text) async {
    await SharePlus.instance.share(ShareParams(text: text));
  }
}
