import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:rxdart/rxdart.dart';

class UpdateAvailableWidget extends StatelessWidget {
  static final Expando<Set<Version>> _bannerShownVersionsByFeatureFlags =
      Expando();

  const UpdateAvailableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final featureFlagRepo = FeatureFlagsRepository.I;
    final launcherService = LauncherService.I;
    final packageInfo = globalProviderContainer
        .read(packageInfoPluginProvider)
        .requireValue;

    final releaseNotesUrl = featureFlagRepo.releaseNotesUrl;

    final themeData = Theme.of(context);

    return SessionReplayUnmask(
      child: StreamBuilder(
        stream: featureFlagRepo.onConfigChanged
            .startWith(null)
            .map(
              (e) =>
                  featureFlagRepo.latestVersion >
                  Version.parse(packageInfo.version),
            )
            .doOnData(
              (isUpdateAvailable) => _maybeTrackFirstBannerShowOfVersion(
                featureFlagRepo,
                isUpdateAvailable: isUpdateAvailable,
              ),
            ),
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
                        onPressed: () {
                          AnalyticsService.I.track(
                            const UpdateInstallTap(UpdatePromptSource.banner),
                          );
                          unawaited(
                            launcherService.launchUrl(
                              featureFlagRepo.downloadUrl,
                            ),
                          );
                        },
                        child: const Text('تحديث الآن!'),
                      ),
                      if (releaseNotesUrl != null)
                        FilledButton.tonal(
                          style: themeData.filledTonalButtonStyleWorkaround,
                          onPressed: () {
                            AnalyticsService.I.track(
                              const ReleaseNotesTap(UpdatePromptSource.banner),
                            );
                            unawaited(
                              launcherService.launchUrl(releaseNotesUrl),
                            );
                          },
                          child: const Text('ما الجديد؟'),
                        ),
                    ],
                  )
                : const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  void _maybeTrackFirstBannerShowOfVersion(
    FeatureFlagsRepository featureFlagRepo, {
    required bool isUpdateAvailable,
  }) {
    if (!isUpdateAvailable) return;

    final shownVersions =
        _bannerShownVersionsByFeatureFlags[featureFlagRepo] ??= {};
    if (!shownVersions.add(featureFlagRepo.latestVersion)) return;

    AnalyticsService.I.track(
      UpdateBannerShow(
        hasReleaseNotes: featureFlagRepo.releaseNotesUrl != null,
      ),
    );
  }
}
