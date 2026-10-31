import 'package:church_admin/church_admin.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/collection.dart';

part 'package:church_admin/src/features/attendance/domain/analytics/attendance_analytics_event.dart';
part 'package:church_admin/src/features/attendance/domain/analytics/kodas_analytics_event.dart';
part 'package:church_admin/src/features/attendance/domain/analytics/meeting_analytics_event.dart';
part 'package:church_admin/src/features/auth/domain/analytics/auth_analytics_event.dart';
part 'package:church_admin/src/features/bulk_actions/domain/analytics/bulk_action_analytics_event.dart';
part 'package:church_admin/src/features/bulk_actions/domain/analytics/bulk_whatsapp_analytics_event.dart';
part 'package:church_admin/src/features/contacts/domain/analytics/phone_contacts_editor_analytics_event.dart';
part 'package:church_admin/src/features/data_analysis/domain/analytics/data_analysis_analytics_event.dart';
part 'package:church_admin/src/features/data_checks/domain/analytics/data_check_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/address_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/contact_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/data_entry_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/entity_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/form_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/list_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/photo_analytics_event.dart';
part 'package:church_admin/src/features/data_entry/domain/analytics/picker_analytics_event.dart';
part 'package:church_admin/src/features/data_export/domain/analytics/data_export_analytics_event.dart';
part 'package:church_admin/src/features/download_app/domain/analytics/download_app_analytics_event.dart';
part 'package:church_admin/src/features/history/domain/analytics/history_analytics_event.dart';
part 'package:church_admin/src/features/home/domain/analytics/home_analytics_event.dart';
part 'package:church_admin/src/features/local_auth/domain/analytics/local_auth_analytics_event.dart';
part 'package:church_admin/src/features/maps/domain/analytics/location_analytics_event.dart';
part 'package:church_admin/src/features/maps/domain/analytics/maps_analytics_event.dart';
part 'package:church_admin/src/features/notifications/domain/analytics/notification_analytics_event.dart';
part 'package:church_admin/src/features/settings/domain/analytics/settings_analytics_event.dart';
part 'package:church_admin/src/features/updates/domain/analytics/update_analytics_event.dart';
part 'package:church_admin/src/features/user_management/domain/analytics/user_form_analytics_event.dart';
part 'package:church_admin/src/features/user_management/domain/analytics/user_management_analytics_event.dart';
part 'package:church_admin/src/features/advanced_search/domain/analytics/advanced_search_analytics_event.dart';
part 'package:church_admin/src/features/advanced_search/domain/analytics/advanced_search_query_analytics_event.dart';

sealed class AnalyticsEvent {
  String get category;

  String get objectAction;

  String get name => '$category:$objectAction';

  Json get properties => const {};

  const AnalyticsEvent();
}
