part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditClassRoute extends HomeChildRoute {
  static const String routePath = '/edit_class';

  final Class? class$;
  final Service? withService;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [class$, withService];

  const EditClassRoute({this.class$, this.withService});

  @override
  Widget build(BuildContext context) {
    return EditClass(class$: class$, withService: withService);
  }
}
