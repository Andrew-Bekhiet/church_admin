part of 'package:church_admin/src/core/services/router/app_route.dart';

class AdvancedSearchRoute extends HomeChildRoute {
  final AdvancedQuery? $extra;

  @override
  String get path => '/advanced_search';

  @override
  List<Object?> get props => [$extra];

  const AdvancedSearchRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return AdvancedSearchScreen(
      key: PageStorageKey(path),
      initialQuery: $extra,
      autoExecuteInitialQuery: $extra != null,
    );
  }
}
