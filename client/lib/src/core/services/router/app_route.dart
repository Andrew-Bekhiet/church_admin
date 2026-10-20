import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:kaisel/kaisel.dart';
import 'package:material_ui/material_ui.dart';

abstract class AppRoute extends KaiselRoute {
  static AppRoute get home =>
      kIsWeb ? const HomeScreenWebRoute() : const HomeScreenRoute();

  String get path;

  @override
  String get routeName => path;

  List<AppRoute> get breadcrumbs => [this];

  const AppRoute();

  Widget build(BuildContext context);

  AppRoute? redirect() => null;

  Future<void> push(BuildContext context) =>
      context.router<AppRoute>().push(this);

  Future<T?> pushForResult<T>(BuildContext context) =>
      context.router<AppRoute>().pushForResult<T>(this);

  Future<void> pushReplacement(BuildContext context) =>
      context.router<AppRoute>().replaceTop(this);
}
