import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

@immutable
class DummyNamedLocation extends GoRouterState {
  const DummyNamedLocation(
    super.configuration, {
    required super.uri,
    required super.matchedLocation,
    required super.name,
    required super.pageKey,
    required super.fullPath,
    required super.pathParameters,
  });

  @override
  String namedLocation(
    String name, {
    Map<String, String> pathParameters = const {},
    Map<String, dynamic> queryParameters = const {},
  }) {
    throw UnimplementedError();
  }
}
