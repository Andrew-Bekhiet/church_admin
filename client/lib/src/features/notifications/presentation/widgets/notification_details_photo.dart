import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart' hide Notification;

class NotificationDetailsPhoto extends StatelessWidget {
  final String imageUrl;
  const NotificationDetailsPhoto({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);

    return CachedNetworkImage(
      imageUrl: imageUrl,
      useOldImageOnUrlChange: true,
      memCacheWidth: devicePixelRatio * screenSize.width * 85 ~/ 100,
      cacheManager: globalProviderContainer.read(baseCacheManagerProvider),
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(
          value: downloadProgress.progress,
        ),
      ),
    );
  }
}
