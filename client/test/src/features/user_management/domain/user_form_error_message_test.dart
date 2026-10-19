import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserFormErrorMessage', () {
    const messageByRejectionCode = {
      'user/person-already-linked': 'هذا المخدوم مرتبط بحساب آخر بالفعل',
      'user/email-taken': 'البريد الإلكتروني مستخدم بحساب آخر',
      'user/name-taken': 'الاسم مستخدم بحساب آخر',
      'invitation/scope-required':
          'يجب تعيين المستخدم الجديد أميناً على منطقة أو خدمة أو مجموعة',
      'invitation/scope-not-manageable':
          'لا يمكنك إضافة مستخدم خارج نطاق صلاحياتك',
    };

    for (final MapEntry(key: code, value: message)
        in messageByRejectionCode.entries) {
      test('a "$code" rejection is explained in Arabic', () {
        expect(
          UserFormErrorMessage.of(
            BackendRejectedException('rejected', code: code),
          ),
          message,
        );
      });
    }

    test('an incomplete form asks for the required data', () {
      expect(
        UserFormErrorMessage.of(const UserFormValidationError()),
        'برجاء إكمال البيانات المطلوبة',
      );
    });

    test(
      'a rejection without a message of its own shows the upstream error',
      () {
        const error = BackendRejectedException(
          'permission not grantable',
          code: 'user/permission-not-grantable',
        );

        expect(UserFormErrorMessage.of(error), error.toString());
      },
    );
  });
}
