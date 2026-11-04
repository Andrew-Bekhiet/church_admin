import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class ChangeFeedEvent with Equatable {
  const ChangeFeedEvent();
}

class LiveResultReceived extends ChangeFeedEvent {
  final LiveResult result;

  @override
  List<Object?> get props => [result];

  const LiveResultReceived(this.result);
}

/// The channel was joined: the server holds none of the registrations the
/// client made before.
class ChannelJoined extends ChangeFeedEvent {
  @override
  List<Object?> get props => [];

  const ChannelJoined();
}
