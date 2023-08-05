import 'package:flutter_web_plugins/url_strategy.dart';

import 'initializer.dart';

class UsePathUrlStrategyInit implements Initializer {
  const UsePathUrlStrategyInit();

  @override
  void initialize() {
    return usePathUrlStrategy();
  }
}
