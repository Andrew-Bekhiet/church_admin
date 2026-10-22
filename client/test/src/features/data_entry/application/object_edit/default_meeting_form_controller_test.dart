import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AdvancedTextFieldController<ObjectEditError> ownerName;
  late DefaultMeetingFormController form;

  setUp(() {
    ownerName = AdvancedTextFieldController<ObjectEditError>();
    form = DefaultMeetingFormController(ownerName: ownerName);
  });

  tearDown(() {
    form.dispose();
    ownerName.dispose();
  });

  group('the suggested meeting name', () {
    test('drops the service prefix of the owner', () {
      ownerName.setValue('خدمة ابتدائي');

      expect(form.name.fieldValue, 'اجتماع ابتدائي');
    });

    test('prefixes any other owner name', () {
      ownerName.setValue('أسرة الشباب');

      expect(form.name.fieldValue, 'اجتماع أسرة الشباب');
    });

    test('stops following the owner once the user renames the meeting', () {
      ownerName.setValue('خدمة ابتدائي');
      form.name.setValue('اجتماع الجمعة');

      ownerName.setValue('خدمة إعدادي');

      expect(form.name.fieldValue, 'اجتماع الجمعة');
    });
  });

  test('a default meeting cannot be created without a name', () async {
    form.name.setValue('');

    expect(await form.validate(), isFalse);
    expect(form.name.error, ObjectEditError.defaultMeetingNameRequired);
  });

  test('no meeting is drafted once the user opts out', () {
    ownerName.setValue('خدمة ابتدائي');

    form.isCreated.setValue(false);

    expect(
      form.draftFor(
        id: 'meeting',
        owner: const Service(id: 's', name: 'خدمة ابتدائي'),
      ),
      isNull,
    );
  });
}
