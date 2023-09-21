import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class NotificationDetailsDialog extends StatelessWidget {
  final Notification notification;

  NotificationDetailsDialog({
    required this.notification,
    super.key,
  });

  late final senderDataFuture = DatabaseService.I.users
      .streamSingleById(id: notification.senderUID)
      .first;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return AlertDialog(
      title: Text(notification.title),
      content: SizedBox(
        width: mediaQuery.size.width * 0.85,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(notification.body),
                    if (notification.photoURL != null)
                      _NotificationPhoto(notification: notification),
                  ],
                ),
              ),
            ),
            if (notification.senderUID !=
                NotificationsService.localNotificationSenderUID)
              _NotificationSender(senderDataFuture: senderDataFuture),
            Text(
              DateFormat('yyyy/M/d h:m a', 'ar-EG').format(
                notification.sentTime,
              ),
            ),
          ],
        ),
      ),
      actions: [
        if (notification.additionalData?['query'] != null)
          TextButton(
            onPressed:
                _onQueryTap(context, notification.additionalData!['query']!),
            child: const Text('فتح نتائج البحث'),
          ),
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('حسنًا'),
        ),
      ],
    );
  }

  void Function() _onQueryTap(BuildContext context, Json queryData) {
    final query = AdvancedQuery.fromJson(queryData);

    return () => context.push(AdvancedSearchScreen.route.path, extra: query);
  }
}

class _NotificationSender extends StatelessWidget {
  const _NotificationSender({
    required this.senderDataFuture,
  });

  final Future<User?> senderDataFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: senderDataFuture,
      builder: (context, senderData) {
        if (senderData.hasError) {
          return ErrorWidget.builder(
            FlutterErrorDetails(exception: senderData.error!),
          );
        }

        if (senderData.connectionState != ConnectionState.done) {
          return const LinearProgressIndicator();
        }

        final sender = senderData.data;

        if (sender == null) {
          return const SizedBox();
        }

        return ViewableObjectWidget(
          sender,
          forceShowSecondLine: false,
          dense: true,
        );
      },
    );
  }
}

class _NotificationPhoto extends StatelessWidget {
  const _NotificationPhoto({
    required this.notification,
  });

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return CachedNetworkImage(
      imageUrl: notification.photoURL!,
      useOldImageOnUrlChange: true,
      memCacheWidth:
          mediaQuery.devicePixelRatio * mediaQuery.size.width * 85 ~/ 100,
      cacheManager: globalProviderContainer.read(baseCacheManagerProvider),
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(
          value: downloadProgress.progress,
        ),
      ),
    );
  }
}
