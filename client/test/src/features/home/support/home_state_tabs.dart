import 'package:church_admin/church_admin.dart';

extension HomeStateTabs on HomeState {
  HomePageConfig get currentTab => pages[currentPage.round()];

  List<Type> get entityTypesAfterSummary =>
      pages.skip(1).map((tab) => tab.type).toList();
}

extension HomePageConfigController on HomePageConfig {
  Object get listController =>
      objectsController?.call() ??
      (throw StateError('$label has no list controller'));
}
