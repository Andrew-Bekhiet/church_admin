import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

part 'package:church_admin/src/core/services/router/home_child_route.dart';
part 'package:church_admin/src/core/services/router/not_found_route.dart';
part 'package:church_admin/src/features/advanced_search/presentation/navigation/advanced_search_route.dart';
part 'package:church_admin/src/features/attendance/presentation/navigation/record_attendance_route.dart';
part 'package:church_admin/src/features/auth/presentation/navigation/email_verification_route.dart';
part 'package:church_admin/src/features/auth/presentation/navigation/forgot_password_route.dart';
part 'package:church_admin/src/features/auth/presentation/navigation/login_route.dart';
part 'package:church_admin/src/features/auth/presentation/navigation/unapproved_user_route.dart';
part 'package:church_admin/src/features/data_analysis/presentation/navigation/meetings_analysis_route.dart';
part 'package:church_admin/src/features/data_analysis/presentation/navigation/person_analysis_route.dart';
part 'package:church_admin/src/features/data_analysis/presentation/navigation/user_analysis_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_area_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_class_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_family_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_group_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_person_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_service_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_store_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/edit_street_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_area_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_class_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_family_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_group_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_person_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_service_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_store_route.dart';
part 'package:church_admin/src/features/data_entry/presentation/navigation/view_street_route.dart';
part 'package:church_admin/src/features/data_export/presentation/navigation/export_entities_selection_route.dart';
part 'package:church_admin/src/features/download_app/presentation/navigation/download_app_route.dart';
part 'package:church_admin/src/features/home/presentation/navigation/home_screen_route.dart';
part 'package:church_admin/src/features/home/presentation/navigation/home_screen_web_route.dart';
part 'package:church_admin/src/features/home/presentation/navigation/my_account_route.dart';
part 'package:church_admin/src/features/local_auth/presentation/navigation/biometrics_auth_route.dart';
part 'package:church_admin/src/features/maps/presentation/navigation/visits_map_route.dart';
part 'package:church_admin/src/features/settings/presentation/navigation/settings_route.dart';
part 'package:church_admin/src/features/under_maintenance/presentation/navigation/under_maintenance_route.dart';
part 'package:church_admin/src/features/update_user_data/presentation/navigation/update_user_spirit_data_route.dart';
part 'package:church_admin/src/features/updates/presentation/navigation/force_update_route.dart';
part 'package:church_admin/src/features/updates/presentation/navigation/outdated_feature_route.dart';
part 'package:church_admin/src/features/user_management/presentation/navigation/edit_user_route.dart';
part 'package:church_admin/src/features/user_management/presentation/navigation/manage_users_route.dart';
part 'package:church_admin/src/features/user_management/presentation/navigation/view_user_route.dart';

sealed class AppRoute extends KaiselRoute {
  static AppRoute get home =>
      kIsWeb ? const HomeScreenWebRoute() : const HomeScreenRoute();

  String get path;

  @override
  String get routeName => path;

  List<AppRoute> get breadcrumbs => [this];

  Map<String, String> get urlParameters => const {};

  const AppRoute();

  Widget build(BuildContext context);

  AppRoute? redirect() => null;

  Future<void> push(BuildContext context) =>
      context.router<AppRoute>().push(this);

  Future<T?> pushForResult<T>(BuildContext context) =>
      context.router<AppRoute>().pushForResult<T>(this);

  Future<void> pushReplacement(BuildContext context) =>
      context.router<AppRoute>().replaceTop(this);
}
