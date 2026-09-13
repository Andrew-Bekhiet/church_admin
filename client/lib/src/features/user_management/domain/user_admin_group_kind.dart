enum UserAdminGroupKind {
  superAdmins(title: 'مسؤلون'),
  area(),
  service(),
  unscoped(title: 'بدون مسؤولية');

  final String? title;

  const UserAdminGroupKind({this.title});
}
