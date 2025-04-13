import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:rxdart/rxdart.dart';

class UpdateAvailableWidget extends StatelessWidget {
  const UpdateAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final featureFlagRepo = FeatureFlagsRepository.I;
    final launcherService = LauncherService.I;
    final packageInfo = globalProviderContainer.read(packageInfoPluginProvider);

    final releaseNotesUrl = featureFlagRepo.releaseNotesUrl;

    final themeData = Theme.of(context);

    return StreamBuilder(
      stream: featureFlagRepo.onConfigChanged
          .map(
            (e) =>
                featureFlagRepo.latestVersion >
                Version.parse(packageInfo.version),
          )
          .startWith(false),
      builder: (context, snapshot) {
        return AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: snapshot.data ?? false
              ? MaterialBanner(
                  content: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'يوجد تحديث جديد متاح!',
                      style: themeData.textTheme.titleLarge,
                    ),
                  ),
                  leadingPadding: const EdgeInsets.symmetric(horizontal: 8),
                  leading: const Icon(Symbols.upgrade),
                  actions: [
                    FilledButton(
                      onPressed: () => launcherService
                          .launchUrl(featureFlagRepo.downloadUrl),
                      child: const Text('تحديث الآن!'),
                    ),
                    if (releaseNotesUrl != null)
                      FilledButton.tonal(
                        onPressed: () =>
                            launcherService.launchUrl(releaseNotesUrl),
                        child: const Text('ما الجديد؟'),
                      ),
                  ],
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
