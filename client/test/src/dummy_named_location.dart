import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

@immutable
class DummyNamedLocation extends GoRouterState {
  const DummyNamedLocation(
    super.configuration, {
    required super.location,
    required super.subloc,
    required super.name,
    required super.pageKey,
  });

  @override
  String namedLocation(
    String name, {
    Map<String, String> params = const {},
    Map<String, dynamic> queryParams = const {},
  }) {
    throw UnimplementedError();
  }
}
