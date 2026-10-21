part of 'package:church_admin/src/core/services/router/app_route.dart';

class AdvancedSearchRoute extends HomeChildRoute {
  final AdvancedQuery? initialQuery;

  @override
  String get path => '/advanced_search';

  @override
  List<Object?> get props => [initialQuery];

  const AdvancedSearchRoute({this.initialQuery});

  @override
  Widget build(BuildContext context) {
    return AdvancedSearchScreen(
      key: PageStorageKey(path),
      initialQuery: initialQuery,
      autoExecuteInitialQuery: initialQuery != null,
    );
  }
}
