import 'package:church_admin/church_admin.dart';

sealed class ContactAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'contact';

  const ContactAnalyticsEvent();
}

final class ContactCallPromptAnswer extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;
  final ContactCallPromptChoice choice;

  @override
  String get objectAction => 'call_prompt_answer';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
    'call_prompt_choice': choice.name,
  };

  const ContactCallPromptAnswer(
    this.owner, {
    required this.isFamilyNumber,
    required this.choice,
  });
}

final class ContactDialerOpen extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isFamilyNumber;

  @override
  String get objectAction => 'dialer_open';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_family_number': isFamilyNumber,
  };

  const ContactDialerOpen(this.owner, {required this.isFamilyNumber});
}

final class CallDateRecordAnswer extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final bool isRecordingAccepted;

  @override
  String get objectAction => 'call_date_record_answer';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'is_recording_accepted': isRecordingAccepted,
  };

  const CallDateRecordAnswer(
    this.owner, {
    required this.isRecordingAccepted,
  });
}

final class DeviceContactCreateAttempt extends ContactAnalyticsEvent {
  final ViewableWithID owner;
  final DeviceContactCreateOutcome outcome;
  final bool hasPhoto;

  @override
  String get objectAction => 'device_contact_create_attempt';

  @override
  Json get properties => {
    ...AnalyticsEntityType.propertiesOf(owner),
    'outcome': outcome.name,
    'has_photo': hasPhoto,
  };

  const DeviceContactCreateAttempt(
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

final class DeviceContactsImportAttempt extends ContactAnalyticsEvent {
  final DeviceContactsImportOutcome outcome;
  final int importedNumberCount;
  final bool isNameUsed;

  @override
  String get objectAction => 'device_contacts_import_attempt';

  @override
  Json get properties => {
    'outcome': outcome.name,
    'imported_number_count': importedNumberCount,
    'is_name_used': isNameUsed,
  };

  const DeviceContactsImportAttempt(
    this.outcome, {
    this.importedNumberCount = 0,
    this.isNameUsed = false,
  });
}

enum ContactCallPromptChoice { call, dialerOnly, cancel }

enum DeviceContactCreateOutcome { permissionDenied, cancelled, created, failed }

enum DeviceContactsImportOutcome {
  permissionDenied,
  pickCancelled,
  dialogCancelled,
  imported,
}
