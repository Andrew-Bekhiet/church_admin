import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

part 'package:church_admin/src/features/auth/domain/analytics/auth_analytics_event.dart';
part 'package:church_admin/src/features/home/domain/analytics/home_analytics_event.dart';

sealed class AnalyticsEvent {
  String get category;

  String get objectAction;

  String get name => '$category:$objectAction';

  Json get properties => const {};

  const AnalyticsEvent();
}
