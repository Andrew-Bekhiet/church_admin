import 'dart:convert';

import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart' hide Notification;
import 'package:intl/intl.dart';

class NotificationDetailsDialog extends StatelessWidget {
  final Notification notification;

  late final senderDataFuture = DatabaseService.I.users
      .streamSingleById(id: notification.senderUID)
      .first;

  void Function() _onQueryTap(BuildContext context, dynamic rawQueryData) {
    var queryData = rawQueryData;

    if (queryData is String) {
      queryData = json.decode(queryData);
    } else if (queryData is Map) {
      queryData = queryData.cast<String, dynamic>();
    }

    final query = AdvancedQuery.fromJson(queryData);

    return () => AdvancedSearchRoute($extra: query).push(context);
  }

  NotificationDetailsDialog({
    required this.notification,
    super.key,
  });

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
                  if (notification.imageURL case final imageUrl?)
                    NotificationDetailsPhoto(imageUrl: imageUrl),
                ],
              ),
            ),
            const SizedBox(height: 20),
            if (notification.senderUID !=
                NotificationsService.localNotificationSenderUID)
              NotificationDetailsSender(senderDataFuture: senderDataFuture),
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
          FilledButton(
            onPressed: _onQueryTap(
              context,
              notification.additionalData!['query'],
            ),
            child: const Text('فتح نتائج البحث'),
          ),
        FilledButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('حسنًا'),
        ),
      ],
    );
  }
}
