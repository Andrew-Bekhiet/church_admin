enum UserAdminGroupKind {
  superAdmins(title: 'مسؤلون', label: 'صلاحيات كاملة'),
  area(label: 'منطقة'),
  service(label: 'خدمة'),
  unscoped(title: 'بدون مسؤولية');

  final String? title;
  final String? label;

  const UserAdminGroupKind({this.title, this.label});
}
