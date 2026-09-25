import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class UserManagementRobot {
  static final RegExp _invitationCodePattern = RegExp(
    r'^[A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4}$',
  );

  final WidgetTester tester;
  final String password;

  Finder get _saveButton => find.widgetWithText(FloatingActionButton, 'حفظ');

  const UserManagementRobot(this.tester, {required this.password});

  Future<void> openManageUsers() async {
    await E2eApp.openDrawerItem(tester, 'إدارة الخدام');
    await E2eApp.unlock(tester, password);
    await tester.waitFor(find.text('إدارة الخدام'));
  }

  Future<void> backToManageUsers() async {
    await tester.tapOn(find.byType(BackButton));
    await tester.waitFor(
      find.widgetWithText(FloatingActionButton, 'إضافة خادم'),
    );
  }

  Future<void> startCreatingUser() async {
    await tester.tapOn(
      find.widgetWithText(FloatingActionButton, 'إضافة خادم'),
    );
    await tester.waitFor(find.text('إنشاء دعوة للانضمام'));
  }

  Future<void> fillNewPerson({
    required String name,
    required String email,
  }) async {
    await tester.tapOn(find.text('إنشاء مخدوم جديد'));
    await tester.typeInto(tester.labelledField('الاسم'), name);
    await tester.tapOn(find.text('ذكر'));
    await tester.typeInto(tester.labelledField('البريد الإلكتروني'), email);
  }

  Future<void> fillExistingPerson({
    required String personName,
    required String email,
  }) async {
    await tester.tapOn(find.text('ربط بمخدوم موجود'));
    await pickPerson(personName);
    await tester.typeInto(tester.labelledField('البريد الإلكتروني'), email);
  }

  Future<void> pickPerson(String personName) async {
    await tester.tapOn(tester.labelledField('المخدوم'));
    await tester.waitFor(find.text('اختيار المخدوم'));
    await tester.typeInto(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.byType(TextField),
      ),
      personName,
    );
    await tester.tapOn(
      find.descendant(
        of: find.byType(AlertDialog),
        matching: find.byWidgetPredicate(
          (widget) => widget is Text && widget.data == personName,
        ),
      ),
    );
    await tester.waitForAbsent(find.text('اختيار المخدوم'));
  }

  Future<void> grantPermission(String label) async {
    await tester.tapOn(find.widgetWithText(CheckboxListTile, label));
  }

  Future<void> addServiceScopeWithUserManagement(String serviceName) async {
    await tester.tapOn(find.text('إضافة أمانة جديدة'));
    await tester.tapOn(find.text('الخدمات'));
    await tester.tapOn(find.text(serviceName));
    await tester.tapOn(find.byType(FloatingActionButton).last);
    await tester.tapOn(find.widgetWithText(ExpansionTile, serviceName));

    for (final label in ['تعديل البيانات', 'ادارة المستخدمين']) {
      await tester.tapOn(
        find.descendant(
          of: find.byType(ExpansionTile),
          matching: find.widgetWithText(CheckboxListTile, label),
        ),
      );
    }
  }

  Future<String> saveAndReadInvitationCode() async {
    await tester.tapOn(_saveButton);
    final codeText = await tester.waitFor(
      find.byWidgetPredicate(
        (widget) =>
            widget is Text &&
            _invitationCodePattern.hasMatch(widget.data ?? ''),
      ),
    );

    return tester.widget<Text>(codeText.first).data!;
  }

  Future<void> changeLinkedPerson(String personName) async {
    await tester.tapOn(find.byTooltip('تعديل'));
    await tester.waitFor(find.text('تعديل بيانات الخادم'));
    await pickPerson(personName);
    await tester.tapOn(_saveButton);
    await tester.waitForAbsent(find.text('تعديل بيانات الخادم'));
  }
}
