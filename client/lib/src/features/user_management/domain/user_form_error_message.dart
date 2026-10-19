import 'package:church_admin/church_admin.dart';

abstract final class UserFormErrorMessage {
  static String of(Object error) => switch (error) {
    UserFormValidationError() => 'برجاء إكمال البيانات المطلوبة',
    PersonAlreadyLinkedException() => 'هذا المخدوم مرتبط بحساب آخر بالفعل',
    BackendRejectedException(code: 'user/person-already-linked') =>
      'هذا المخدوم مرتبط بحساب آخر بالفعل',
    BackendRejectedException(code: 'user/email-taken') =>
      'البريد الإلكتروني مستخدم بحساب آخر',
    BackendRejectedException(code: 'user/name-taken') =>
      'الاسم مستخدم بحساب آخر',
    BackendRejectedException(code: 'invitation/scope-required') =>
      'يجب تعيين المستخدم الجديد أميناً على منطقة أو خدمة أو مجموعة',
    BackendRejectedException(code: 'invitation/scope-not-manageable') =>
      'لا يمكنك إضافة مستخدم خارج نطاق صلاحياتك',
    _ => error.toString(),
  };
}
