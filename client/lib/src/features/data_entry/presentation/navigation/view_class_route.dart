part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewClassRoute extends HomeChildRoute {
  final String id;
  final Class? $class;

  @override
  String get path => '/view_class';

  @override
  List<Object?> get props => [id, $class];

  @override
  Map<String, String> get urlParameters => {'id': id};

  const ViewClassRoute({required this.id, this.$class});

  @override
  Widget build(BuildContext context) {
    return ViewClass(classId: id, $class: $class);
  }
}
