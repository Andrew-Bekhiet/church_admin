import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class LiveQueriesEvent with Equatable {
  const LiveQueriesEvent();
}

class LiveResultReceived extends LiveQueriesEvent {
  final LiveResult result;

  @override
  List<Object?> get props => [result];

  const LiveResultReceived(this.result);
}

/// The channel was joined: the server holds none of the registrations the
/// client made before.
class ChannelJoined extends LiveQueriesEvent {
  @override
  List<Object?> get props => [];

  const ChannelJoined();
}
