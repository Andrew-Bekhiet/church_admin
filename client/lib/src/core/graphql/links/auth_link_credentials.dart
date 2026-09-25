import 'package:equatable/equatable.dart';

class AuthLinkCredentials with Equatable {
  final String uid;
  final String? hasuraUserId;
  final String idToken;

  @override
  List<Object?> get props => [uid, hasuraUserId, idToken];

  const AuthLinkCredentials({
    required this.uid,
    required this.hasuraUserId,
    required this.idToken,
  });
}
