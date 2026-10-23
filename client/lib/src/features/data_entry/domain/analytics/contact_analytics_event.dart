import 'package:church_admin/church_admin.dart';

sealed class ContactAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'contact';

  const ContactAnalyticsEvent();
}

final class ContactNumberCall extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;
  final ContactCallChoice choice;

  @override
  String get objectAction => 'number_call';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
    'choice': choice.name,
  };

  const ContactNumberCall(
    this.owner, {
    required this.isFamilyNumber,
    required this.choice,
  });
}

final class CallDateRecordAnswer extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isAccepted;

  @override
  String get objectAction => 'call_date_record_answer';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_accepted': isAccepted,
  };

  const CallDateRecordAnswer(this.owner, {required this.isAccepted});
}

final class DeviceContactCreate extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final DeviceContactCreateOutcome outcome;
  final bool hasPhoto;

  @override
  String get objectAction => 'device_contact_create';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'outcome': outcome.name,
    'has_photo': hasPhoto,
  };

  const DeviceContactCreate(
    this.owner, {
    required this.outcome,
    this.hasPhoto = false,
  });
}

final class WhatsappChatOpen extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;

  @override
  String get objectAction => 'whatsapp_open';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
  };

  const WhatsappChatOpen(this.owner, {required this.isFamilyNumber});
}

final class SmsChatOpen extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;

  @override
  String get objectAction => 'sms_open';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
  };

  const SmsChatOpen(this.owner, {required this.isFamilyNumber});
}

final class NumberCopy extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;

  @override
  String get objectAction => 'number_copy';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
  };

  const NumberCopy(this.owner, {required this.isFamilyNumber});
}

final class DeviceContactsImport extends ContactAnalyticsEvent {
  final DeviceContactsImportOutcome outcome;
  final int importedNumberCount;
  final bool isNameUsed;

  @override
  String get objectAction => 'device_contacts_import';

  @override
  Json get properties => {
    'outcome': outcome.name,
    'numbers_imported_count': importedNumberCount,
    'is_name_used': isNameUsed,
  };

  const DeviceContactsImport(
    this.outcome, {
    this.importedNumberCount = 0,
    this.isNameUsed = false,
  });
}

enum ContactCallChoice { call, dialerOnly, cancel, unprompted }

enum DeviceContactCreateOutcome { permissionDenied, cancelled, created }

enum DeviceContactsImportOutcome {
  permissionDenied,
  pickCancelled,
  dialogCancelled,
  imported,
}
