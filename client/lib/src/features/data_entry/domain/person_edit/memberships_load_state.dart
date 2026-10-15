import 'package:church_admin/church_admin.dart';

part 'memberships_load_failed.dart';
part 'memberships_loaded.dart';
part 'memberships_loading.dart';

sealed class MembershipsLoadState {
  const MembershipsLoadState();
}
