import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_entry/presentation/screens/edit_object_data/edit_user.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditUserRoute extends GoRouteData {
  const EditUserRoute();

  // final String uid;
  // final User? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EditUser();
  }
}
