import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

import 'initializer.dart';

class WebNavigationInit implements Initializer {
  const WebNavigationInit();

  @override
  void initialize() {
    if (kIsWeb) {
      GoRouter.optionURLReflectsImperativeAPIs = true;
      usePathUrlStrategy();
    }
  }
}
