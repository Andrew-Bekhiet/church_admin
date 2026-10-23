import 'package:church_admin/church_admin.dart';

sealed class ContactAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'contact';

  const ContactAnalyticsEvent();
}

sealed class ContactNumberAnalyticsEvent extends ContactAnalyticsEvent {
  final Json ownerProperties;
  final bool isFamilyNumber;

  @override
  Json get properties => {
    ...ownerProperties,
    'is_family_number': isFamilyNumber,
  };

  ContactNumberAnalyticsEvent(
    ViewableWithID owner, {
    required this.isFamilyNumber,
  }) : ownerProperties = AnalyticsEntityType.propertiesOf(owner);
}

final class ContactCallPromptAnswer extends ContactNumberAnalyticsEvent {
  final ContactCallPromptChoice choice;

  @override
  String get objectAction => 'call_prompt_answer';

  @override
  Json get properties => {
    ...super.properties,
    'call_prompt_choice': choice.name,
  };

  ContactCallPromptAnswer(
    super.owner, {
    required this.choice,
    required super.isFamilyNumber,
  });
}

final class ContactDialerOpen extends ContactNumberAnalyticsEvent {
  @override
  String get objectAction => 'dialer_open';

  ContactDialerOpen(super.owner, {required super.isFamilyNumber});
}

final class WhatsappChatOpen extends ContactNumberAnalyticsEvent {
  @override
  String get objectAction => 'whatsapp_open';

  WhatsappChatOpen(super.owner, {required super.isFamilyNumber});
}

final class SmsChatOpen extends ContactNumberAnalyticsEvent {
  @override
  String get objectAction => 'sms_open';

  SmsChatOpen(super.owner, {required super.isFamilyNumber});
}

final class NumberCopy extends ContactNumberAnalyticsEvent {
  @override
  String get objectAction => 'number_copy';

  NumberCopy(super.owner, {required super.isFamilyNumber});
}

final class CallDateRecordAnswer extends ContactAnalyticsEvent {
  final Json ownerProperties;
  final bool isRecordingAccepted;

  @override
  String get objectAction => 'call_date_record_answer';

  @override
  Json get properties => {
    ...ownerProperties,
    'is_recording_accepted': isRecordingAccepted,
  };

  CallDateRecordAnswer(
    ViewableWithID owner, {
    required this.isRecordingAccepted,
  }) : ownerProperties = AnalyticsEntityType.propertiesOf(owner);
}

final class DeviceContactCreateAttempt extends ContactAnalyticsEvent {
  final Json ownerProperties;
  final DeviceContactCreateOutcome outcome;
  final bool hasPhoto;

  @override
  String get objectAction => 'device_contact_create_attempt';

  @override
  Json get properties => {
    ...ownerProperties,
    'outcome': outcome.name,
    'has_photo': hasPhoto,
  };

  DeviceContactCreateAttempt(
    ViewableWithID owner, {
    required this.outcome,
    this.hasPhoto = false,
  }) : ownerProperties = AnalyticsEntityType.propertiesOf(owner);
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
