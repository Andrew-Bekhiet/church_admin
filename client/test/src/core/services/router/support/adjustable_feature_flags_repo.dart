import 'dart:async';

import '../../../../fakes/fake_feature_flags_repo.dart';

class AdjustableFeatureFlagsRepo extends FakeFeatureFlagsRepo {
  final StreamController<void> _configChanges = StreamController.broadcast();

  @override
  bool mustForceUpdate = false;

  @override
  bool isUnderMaintenance = false;

  @override
  Set<String> disabledRoutes = {};

  @override
  Stream<void> get onConfigChanged => _configChanges.stream;

  void publishConfigChange() => _configChanges.add(null);

  Future<void> close() => _configChanges.close();
}
