part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditClassRoute extends HomeChildRoute {
  final EditClassExtra? $extra;

  @override
  String get path => '/edit_class';

  @override
  List<Object?> get props => [$extra];

  const EditClassRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditClass(
      class$: $extra?.$class,
      withService: $extra?.service,
    );
  }
}
