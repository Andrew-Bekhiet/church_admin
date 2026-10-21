part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditClassRoute extends HomeChildRoute {
  final Class? class$;
  final Service? withService;

  @override
  String get path => '/edit_class';

  @override
  List<Object?> get props => [class$, withService];

  const EditClassRoute({this.class$, this.withService});

  @override
  Widget build(BuildContext context) {
    return EditClass(class$: class$, withService: withService);
  }
}
