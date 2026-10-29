import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

part 'package:church_admin/src/features/auth/domain/analytics/auth_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/address_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/contact_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/data_entry_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/entity_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/form_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/list_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/photo_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/picker_analytics_event.dart';
part 'package:church_admin/src/features/history/domain/analytics/history_analytics_event.dart';
part 'package:church_admin/src/features/home/domain/analytics/home_analytics_event.dart';

sealed class AnalyticsEvent {
  String get category;

  String get objectAction;

  String get name => '$category:$objectAction';

  Json get properties => const {};

  const AnalyticsEvent();
}
