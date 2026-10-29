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
                currentVersion: packageInfo.version,
                isUpdateAvailable: isUpdateAvailable,
              ),
            ),
        builder: (context, snapshot) {
          final releaseNotesUrl = featureFlagRepo.releaseNotesUrl;

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
                            UpdateInstallTap(
                              UpdatePromptSource.banner,
                              currentVersion: packageInfo.version,
                              latestVersion: featureFlagRepo.latestVersion
                                  .toString(),
                            ),
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
                              ReleaseNotesTap(
                                UpdatePromptSource.banner,
                                currentVersion: packageInfo.version,
                                latestVersion: featureFlagRepo.latestVersion
                                    .toString(),
                              ),
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
    required String currentVersion,
    required bool isUpdateAvailable,
  }) {
    if (!isUpdateAvailable) return;

    final shownVersions =
        _bannerShownVersionsByFeatureFlags[featureFlagRepo] ??= {};
    if (!shownVersions.add(featureFlagRepo.latestVersion)) return;

    AnalyticsService.I.track(
      UpdateBannerShow(
        hasReleaseNotes: featureFlagRepo.releaseNotesUrl != null,
        currentVersion: currentVersion,
        latestVersion: featureFlagRepo.latestVersion.toString(),
      ),
    );
  }
}
