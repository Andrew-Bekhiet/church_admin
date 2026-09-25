class PersonAlreadyLinkedException implements Exception {
  final String personId;

  const PersonAlreadyLinkedException(this.personId);
}
