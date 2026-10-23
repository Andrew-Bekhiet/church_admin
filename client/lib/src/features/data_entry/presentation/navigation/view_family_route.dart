part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewFamilyRoute extends HomeChildRoute {
  static const String routePath = '/view_family';

  final String id;
  final Family? family;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'family_id': id};

  @override
  List<Object?> get props => [id, family];

  const ViewFamilyRoute({required this.id, this.family});

  @override
  Widget build(BuildContext context) {
    return ViewFamily(familyId: id, family: family);
  }
}
