part of 'package:church_admin/src/core/services/router/app_route.dart';

class AdvancedSearchRoute extends HomeChildRoute {
  static const String routePath = '/advanced_search';

  final AdvancedQuery? initialQuery;

  @override
  String get path => routePath;

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
