import 'package:church_admin/church_admin.dart';
import 'package:timeago/timeago.dart';

class IntlLocaleMessagesInit implements Initializer {
  const IntlLocaleMessagesInit();

  @override
  Future<void> initialize() async {
    setLocaleMessages('ar', ArMessages());
  }
}
