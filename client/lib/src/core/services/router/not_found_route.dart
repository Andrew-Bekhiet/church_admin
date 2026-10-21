part of 'package:church_admin/src/core/services/router/app_route.dart';

class NotFoundRoute extends HomeChildRoute {
  final Uri address;

  @override
  String get path => address.path;

  @override
  List<Object?> get props => [address];

  const NotFoundRoute(this.address);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حدث خطأ',
          style: TextStyle(color: colorScheme.onErrorContainer),
        ),
        backgroundColor: colorScheme.errorContainer,
      ),
      body: ErrorWidget.builder(
        FlutterErrorDetails(exception: RouteNotFoundException(address)),
      ),
    );
  }
}
