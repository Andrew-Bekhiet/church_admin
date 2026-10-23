import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:permission_handler/permission_handler.dart';

class EditPersonContactsImport {
  final PhoneContactsFormController _phoneContacts;
  final AdvancedTextFieldController<PersonEditError> _name;

  const EditPersonContactsImport({
    required this._phoneContacts,
    required this._name,
  });

  Future<void> run(BuildContext context) async {
    FocusScope.of(context).requestFocus();
    final permissionStatus = await Permission.contacts.request();
    if (permissionStatus != PermissionStatus.granted &&
        permissionStatus != PermissionStatus.limited) {
      AnalyticsService.I.track(
        const DeviceContactsImport(
          DeviceContactsImportOutcome.permissionDenied,
        ),
      );

      return;
    }
    final contact = await ContactsService.I.pickContact();
    if (contact == null) {
      AnalyticsService.I.track(
        const DeviceContactsImport(DeviceContactsImportOutcome.pickCancelled),
      );

      return;
    }
    if (!context.mounted) return;

    final result =
        await showDialog<
          ({bool useContactName, Set<({String label, String number})> numbers})
        >(
          context: context,
          builder: (context) => ContactImportDialog(contact: contact),
        );
    if (result == null) {
      AnalyticsService.I.track(
        const DeviceContactsImport(DeviceContactsImportOutcome.dialogCancelled),
      );

      return;
    }
    if (!context.mounted) return;

    AnalyticsService.I.track(
      DeviceContactsImport(
        DeviceContactsImportOutcome.imported,
        importedNumberCount: result.numbers.length,
        isNameUsed: result.useContactName,
      ),
    );
    _phoneContacts.importNumbers(result.numbers);
    if (result.useContactName) _name.setValue(contact.displayName ?? '');
  }
}
