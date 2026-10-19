import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class ChangeFeedEvent with Equatable {
  const ChangeFeedEvent();
}

class ChangesReceived extends ChangeFeedEvent {
  final List<EntityChange> changes;

  @override
  List<Object?> get props => [changes];

  const ChangesReceived(this.changes);
}

class ResyncRequired extends ChangeFeedEvent {
  @override
  List<Object?> get props => [];

  const ResyncRequired();
}
