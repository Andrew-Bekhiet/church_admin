enum UserAdminGroupKind {
  superAdmins(title: 'مسؤولون عامون'),
  area(),
  service(),
  unscoped(title: 'بدون مسؤولية');

  final String? title;

  const UserAdminGroupKind({this.title});
}
