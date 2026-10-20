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
      'user/permission-not-grantable': 'لا يمكنك منح صلاحية لا تملكها',
      'user/permission-levels-inconsistent':
          'هذه الصلاحيات تتطلب صلاحيات أخرى أساسية',
      'user/duplicate-scope': 'هذا المستخدم أمين بالفعل على بعض هذه البيانات',
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
          'user is locked',
          code: 'user/email-locked',
        );

        expect(UserFormErrorMessage.of(error), error.toString());
      },
    );
  });
}
