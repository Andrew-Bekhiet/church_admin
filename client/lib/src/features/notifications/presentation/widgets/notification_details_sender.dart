import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart' hide Notification;

class NotificationDetailsSender extends StatelessWidget {
  final Future<User?> senderDataFuture;
  const NotificationDetailsSender({
    required this.senderDataFuture,
  });

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
