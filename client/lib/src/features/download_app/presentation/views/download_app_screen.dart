import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DownloadAppScreen extends StatelessWidget {
  const DownloadAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تنزيل التطبيق'),
      ),
      body: Center(
        child: Flex(
          direction: MediaQuery.orientationOf(context) == Orientation.portrait
              ? Axis.vertical
              : Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FilledButton.tonalIcon(
              style: Theme.of(context).filledTonalButtonStyleWorkaround,
              onPressed: () => _downloadAndroidApp(context, 'android'),
              icon: const Icon(Symbols.android),
              label: const Text('تنزيل التطبيق لنظام Android'),
            ),
            FilledButton.tonalIcon(
              style: Theme.of(context).filledTonalButtonStyleWorkaround,
              onPressed: () => _downloadAndroidApp(context, 'ios'),
              icon: const Icon(Symbols.ios),
              label: const Text('تنزيل التطبيق لنظام iOS (.ipa)'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _downloadAndroidApp(
    BuildContext context,
    String platform,
  ) async {
    final String url = await _showLoadingLinkDialog(
      context,
      FunctionsService.I.getAppDownloadLink(platform),
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
