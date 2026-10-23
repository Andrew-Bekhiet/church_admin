import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:rxdart/rxdart.dart';

class UpdateAvailableWidget extends StatefulWidget {
  const UpdateAvailableWidget({super.key});

  @override
  State<UpdateAvailableWidget> createState() => _UpdateAvailableWidgetState();
}

class _UpdateAvailableWidgetState extends State<UpdateAvailableWidget> {
  final FeatureFlagsRepository _featureFlagRepo = FeatureFlagsRepository.I;

  late final Stream<bool> _isUpdateAvailable = _featureFlagRepo.onConfigChanged
      .startWith(null)
      .map(
        (_) =>
            _featureFlagRepo.latestVersion >
            Version.parse(
              globalProviderContainer
                  .read(packageInfoPluginProvider)
                  .requireValue
                  .version,
            ),
      )
      .distinct()
      .doOnData(_maybeTrackBannerShow);

  @override
  Widget build(BuildContext context) {
    final launcherService = LauncherService.I;
    final releaseNotesUrl = _featureFlagRepo.releaseNotesUrl;

    final themeData = Theme.of(context);

    return SessionReplayUnmask(
      child: StreamBuilder(
        stream: _isUpdateAvailable,
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
                            const UpdateNowTap(UpdatePromptSource.banner),
                          );
                          unawaited(
                            launcherService.launchUrl(
                              _featureFlagRepo.downloadUrl,
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

  void _maybeTrackBannerShow(bool isUpdateAvailable) {
    if (!isUpdateAvailable) return;

    AnalyticsService.I.track(
      UpdateBannerShow(
        hasReleaseNotes: _featureFlagRepo.releaseNotesUrl != null,
      ),
    );
  }
}
