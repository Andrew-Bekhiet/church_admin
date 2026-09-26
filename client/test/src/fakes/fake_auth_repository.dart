import 'package:church_admin/church_admin.dart';

class FakeAuthRepository implements AuthRepository {
  @override
  final Stream<AuthUser?> userChanges;

  FakeAuthRepository({Stream<AuthUser?>? userChanges})
    : userChanges = userChanges ?? const Stream.empty();

  @override
  Future<void> dispose() async {}

  @override
  Future<void> reauthWithEmailPassword({
    required String email,
    required String password,
  }) => throw UnimplementedError();

  @override
  Future<void> reload() => throw UnimplementedError();

  @override
  Future<void> refreshToken() => throw UnimplementedError();

  @override
  Future<void> sendEmailVerification() => throw UnimplementedError();

  @override
  Future<void> sendPasswordResetEmail({required String email}) =>
      throw UnimplementedError();

  @override
  Future<void> signInWithEmailPassword({
    required String email,
    required String password,
  }) => throw UnimplementedError();

  @override
  Future<void> signOut() => throw UnimplementedError();

  @override
  Future<void> signUpWithEmailPassword({
    required String email,
    required String password,
  }) => throw UnimplementedError();
}
