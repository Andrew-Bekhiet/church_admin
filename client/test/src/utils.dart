import 'package:visibility_detector/visibility_detector.dart';

void flushVisibilityDetectors() {
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  VisibilityDetectorController.instance.notifyNow();
}
