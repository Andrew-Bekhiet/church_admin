part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AdvancedSearchAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'advanced_search';

  const AdvancedSearchAnalyticsEvent();
}
