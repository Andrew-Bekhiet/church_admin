import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class OutdatedFeatureScreen extends StatelessWidget {
  const OutdatedFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final downloadUrl = FeatureFlagsRepository.I.downloadUrl;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 20,
          children: [
            FittedBox(child: Image.asset('assets/images/update.png')),
            Text(
              'يجب تحديث التطبيق لاستخدام هذه الخاصية',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            FilledButton(
              onPressed: () => LauncherService.I.launchUrl(downloadUrl),
              child: const Text('تحديث الآن'),
            ),
          ],
        ),
      ),
    );
  }
}
