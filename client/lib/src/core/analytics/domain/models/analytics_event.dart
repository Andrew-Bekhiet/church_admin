import 'package:church_admin/church_admin.dart';

abstract class AnalyticsEvent {
  String get category;

  String get objectAction;

  String get name => '$category:$objectAction';

  Json get properties => const {};

  const AnalyticsEvent();
}
