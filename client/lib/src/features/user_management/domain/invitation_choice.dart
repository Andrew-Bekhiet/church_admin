import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class InvitationChoice with Equatable {
  const InvitationChoice();
}

final class NoInvitation extends InvitationChoice {
  @override
  List<Object?> get props => [];

  const NoInvitation();
}

final class InvitationRequest extends InvitationChoice {
  static const Duration defaultValidity = Duration(days: 7);
  static const Duration maxValidity = Duration(days: 30);

  static DateTime defaultExpiry(DateTime now) => now.add(defaultValidity);

  static DateTime maxExpiry(DateTime createdAt) => createdAt.add(maxValidity);

  final DateTime expiresAt;

  @override
  List<Object?> get props => [expiresAt];

  const InvitationRequest(this.expiresAt);
}

final class ExistingInvitation extends InvitationChoice {
  final Invitation invitation;

  @override
  List<Object?> get props => [invitation];

  const ExistingInvitation(this.invitation);
}
