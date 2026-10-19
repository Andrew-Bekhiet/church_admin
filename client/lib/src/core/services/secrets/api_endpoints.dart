import 'package:equatable/equatable.dart';

class ApiEndpoints extends Equatable {
  final String serverUrl;

  Uri get graphql => _serverUri.replace(path: '/gql');

  Uri get healthCheck => _serverUri.replace(path: '/healthz');

  Uri get changeFeedSocket => _serverUri.replace(
    scheme: _serverUri.isScheme('https') ? 'wss' : 'ws',
    path: '/socket/websocket',
  );

  Uri get _serverUri => Uri.parse(serverUrl);

  @override
  List<Object?> get props => [serverUrl];

  const ApiEndpoints(this.serverUrl);
}
