import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

class WebNavigationInit implements Initializer {
  const WebNavigationInit();

  @override
  Null initialize() {
    if (!kIsWeb) return;

    usePathUrlStrategy();
  }
}
