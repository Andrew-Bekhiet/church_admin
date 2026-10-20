import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class StubRoute extends AppRoute {
  @override
  final String path;
  final WidgetBuilder builder;

  @override
  List<Object?> get props => [path];

  const StubRoute(this.path, this.builder);

  @override
  Widget build(BuildContext context) => builder(context);
}
