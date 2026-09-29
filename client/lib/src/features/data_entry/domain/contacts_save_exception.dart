import 'package:church_admin/church_admin.dart';

class ContactsSaveException implements Exception {
  final ContactsErrorCode errorCode;
  final Object? cause;

  String get message => errorCode.code;

  const ContactsSaveException(this.errorCode, {this.cause});

  @override
  String toString() => 'ContactsSaveException($message)';
}
