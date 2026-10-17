import 'package:church_admin/church_admin.dart';

extension HomeStateTabs on HomeState {
  List<Type?> get entityTypesAfterSummary =>
      tabs.skip(1).map((tab) => tab.entity).toList();
}
