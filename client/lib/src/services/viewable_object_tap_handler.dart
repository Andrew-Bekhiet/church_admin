import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CATapHandler implements DefaultViewableObjectTapHandler {
  CATapHandler(this.router);

  final GoRouter router;

  @override
  NavigatorState get navigator => router.navigator!;

  @override
  GlobalKey<NavigatorState> get navigatorKey => throw UnimplementedError();

  @override
  void onTap(Viewable object) {
    if (object is Person) {
      router.goNamed(
        'view_person',
        queryParams: {'id': object.id},
        extra: object,
      );
    } else if (object is Service) {
      router.goNamed(
        'view_service',
        queryParams: {'id': object.id},
        extra: object,
      );
    } else if (object is Area) {
      router.goNamed(
        'view_area',
        queryParams: {'id': object.id},
        extra: object,
      );
    } else if (object is Group) {
      router.goNamed(
        'view_group',
        queryParams: {'id': object.id},
        extra: object,
      );
    } else if (object is Class) {
      router.goNamed(
        'view_class',
        queryParams: {'id': object.id},
        extra: object,
      );
    } else {
      throw UnimplementedError('Unexpected object:\n' + object.toString());
    }
  }
}
