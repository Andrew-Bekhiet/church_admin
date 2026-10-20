part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewFamilyRoute extends HomeChildRoute {
  final String id;
  final Family? family;

  @override
  String get path => '/view_family';

  @override
  List<Object?> get props => [id, family];

  @override
  Map<String, String> get urlParameters => {'id': id};

  const ViewFamilyRoute({required this.id, this.family});

  @override
  Widget build(BuildContext context) {
    return ViewFamily(familyId: id, family: family);
  }
}
