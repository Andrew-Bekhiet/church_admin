import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

class FakePageController extends Fake
    with ChangeNotifier
    implements PageController {
  double _page = 0;

  @override
  bool get hasClients => true;

  @override
  double? get page => _page;

  @override
  void jumpToPage(int page) {
    _page = page.toDouble();
    notifyListeners();
  }
}
