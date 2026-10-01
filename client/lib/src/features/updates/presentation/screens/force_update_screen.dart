import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class ForceUpdateScreen extends StatelessWidget {
  final FeatureFlagsRepository _featureFlagsRepo;
  final LauncherService _launcherService;

  ForceUpdateScreen({
    FeatureFlagsRepository? featureFlagsRepo,
    LauncherService? launcherService,
    super.key,
  }) : _featureFlagsRepo = featureFlagsRepo ?? FeatureFlagsRepository.I,
       _launcherService = launcherService ?? LauncherService.I;

  @override
  Widget build(BuildContext context) {
    final releaseNotesUrl = _featureFlagsRepo.releaseNotesUrl;

    final forceUpdateMessage = _featureFlagsRepo.forceUpdateMessage;

    return PostHogUnmaskWidget(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              FittedBox(child: Image.asset('assets/images/update.png')),
              Text(
                'يوجد تحديث جديد متاح!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              if (forceUpdateMessage != null)
                Text(
                  forceUpdateMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              FilledButton(
                onPressed: () =>
                    _launcherService.launchUrl(_featureFlagsRepo.downloadUrl),
                child: const Text('تحديث الآن'),
              ),
              if (releaseNotesUrl != null)
                FilledButton.tonal(
                  style: Theme.of(context).filledTonalButtonStyleWorkaround,
                  onPressed: () => _launcherService.launchUrl(releaseNotesUrl),
                  child: const Text('ما الجديد؟'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
