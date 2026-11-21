enum UserAdminGroupKind {
  superAdmins(title: 'مسؤلون'),
  service(),
  area(),
  unscoped(title: 'بدون مسؤولية'),
  automatedAccounts(title: 'حسابات آلية');

  final String? title;

  const UserAdminGroupKind({this.title});
}
