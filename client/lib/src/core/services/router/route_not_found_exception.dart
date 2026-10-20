class RouteNotFoundException implements Exception {
  final Uri address;

  const RouteNotFoundException(this.address);

  @override
  String toString() => 'RouteNotFoundException: no screen at $address';
}
