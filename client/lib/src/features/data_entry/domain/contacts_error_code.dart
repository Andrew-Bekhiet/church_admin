enum ContactsErrorCode {
  invalidPhone('contacts/invalid-phone'),
  familyRequired('contacts/family-required'),
  saveFailed('contacts/save-failed');

  final String code;

  const ContactsErrorCode(this.code);
}
