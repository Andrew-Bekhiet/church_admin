import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DownloadAppScreen extends StatelessWidget {
  static final GoRoute route = GoRoute(
    path: '/download',
    builder: (context, state) => const DownloadAppScreen(),
    redirect: HomeScreen.route.redirect,
  );

  const DownloadAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تنزيل التطبيق'),
      ),
      body: Center(
        child: Flex(
          direction: MediaQuery.of(context).orientation == Orientation.portrait
              ? Axis.vertical
              : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () => _downloadAndroidApp(context),
              child: const Text('تنزيل التطبيق لنظام Android'),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ElevatedButton(
                  onPressed: null,
                  child: Text('تنزيل التطبيق لنظام iOS/iPhone'),
                ),
                Text('قريبا', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _downloadAndroidApp(BuildContext context) async {
    final String url = await _showLoadingLinkDialog(
      context,
      FunctionsService.I.getAppDownloadLink('android'),
    );

    unawaited(LauncherService.I.launchUrl(Uri.parse(url)));
  }

  Future<T> _showLoadingLinkDialog<T>(BuildContext context, Future<T> future) {
    final completer = Completer<T>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              LoggingService.I.reportError(snapshot.error);

              completer.completeError(snapshot.error!);

              return const Text(
                'لا يمكن تحميل الرابط في الوقت الحالي\n' 'يرجى المحاولة لاحقا',
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              WidgetsBinding.instance
                  .addPostFrameCallback((_) => Navigator.of(context).pop());

              completer.complete(snapshot.data);

              return const Text('جار التنزيل');
            }

            return const Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Expanded(child: Text('جاري تحميل الرابط')),
              ],
            );
          },
        ),
      ),
    );

    return completer.future;
  }
}
