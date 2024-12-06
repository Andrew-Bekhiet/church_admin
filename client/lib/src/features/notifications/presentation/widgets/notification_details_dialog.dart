import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;
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
    return AlertDialog(
      title: Text(notification.title),
      content: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.85,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(notification.body),
                  if (notification.imageURL != null)
                    _NotificationPhoto(notification: notification),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (notification.senderUID !=
                NotificationsService.localNotificationSenderUID)
              _NotificationSender(senderDataFuture: senderDataFuture),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                DateFormat(
                  'التاريخ: yyyy/M/d\nالساعة: h:m a',
                  'ar-EG',
                ).format(
                  notification.sentTime,
                ),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      actions: [
        if (notification.additionalData?['query'] != null)
          TextButton(
            onPressed: _onQueryTap(
              context,
              notification.additionalData!['query'],
            ),
            child: const Text('فتح نتائج البحث'),
          ),
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('حسنًا'),
        ),
      ],
    );
  }

  void Function() _onQueryTap(BuildContext context, dynamic queryData) {
    if (queryData is String) {
      queryData = json.decode(queryData);
    } else if (queryData is Map) {
      queryData = queryData.cast<String, dynamic>();
    }

    final query = AdvancedQuery.fromJson(queryData);

    return () => AdvancedSearchRoute($extra: query).push(context);
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
          subtitle: const SizedBox(),
          isDense: true,
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
    final screenSize = MediaQuery.sizeOf(context);
    final devicePixelRatio = MediaQuery.devicePixelRatioOf(context);

    return CachedNetworkImage(
      imageUrl: notification.imageURL!,
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
