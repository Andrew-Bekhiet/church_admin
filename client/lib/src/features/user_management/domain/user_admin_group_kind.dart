enum UserAdminGroupKind {
  superAdmins(title: 'مسؤلون'),
  service(),
  area(),
  unscoped(title: 'بدون مسؤولية');

  final String? title;

  const UserAdminGroupKind({this.title});
}
