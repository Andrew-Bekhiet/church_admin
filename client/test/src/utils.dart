import 'package:church_admin/church_admin.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:visibility_detector/visibility_detector.dart';

void flushVisibilityDetectors() {
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  VisibilityDetectorController.instance.notifyNow();
}

WidgetWrapper materialWithCATheme() => materialAppWrapper(
      theme: ThemingService.getDefault(
        darkTheme: false,
        greatFeastThemeOverride: false,
      ),
    );
