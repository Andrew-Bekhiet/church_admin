enum LegalDocument {
  // TODO: to be extracted to dart defines
  termsOfService('https://church-data-admin.firebaseapp.com/terms-of-service/'),
  privacyPolicy('https://church-data-admin.firebaseapp.com/privacy-policy/');

  final String url;

  const LegalDocument(this.url);
}
