import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

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
