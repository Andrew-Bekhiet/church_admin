part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewClassRoute extends HomeChildRoute {
  static const String routePath = '/view_class';

  final String id;
  final Class? $class;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [id, $class];

  const ViewClassRoute({required this.id, this.$class});

  @override
  Widget build(BuildContext context) {
    return ViewClass(classId: id, $class: $class);
  }
}
