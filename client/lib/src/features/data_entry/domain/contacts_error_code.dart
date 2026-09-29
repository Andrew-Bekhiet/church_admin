enum ContactsErrorCode {
  invalidPhone('contacts/invalid-phone'),
  saveFailed('contacts/save-failed');

  final String code;

  const ContactsErrorCode(this.code);
}
