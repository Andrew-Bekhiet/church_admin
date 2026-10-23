import 'package:church_admin/church_admin.dart';

sealed class PhoneContactsEditorAnalyticsEvent extends AnalyticsEvent {
  static Json labelPropertiesOf(PhoneContactLabel label) => switch (label) {
    FreePhoneContactLabel() => {'label_kind': PhoneContactLabelKind.free.name},
    RolePhoneContactLabel(:final role) => {
      'label_kind': PhoneContactLabelKind.role.name,
      'role_id': role.id,
    },
  };

  @override
  String get category => 'contacts';

  const PhoneContactsEditorAnalyticsEvent();
}

final class ContactsPhoneAdd extends PhoneContactsEditorAnalyticsEvent {
  final PhoneContactLabel label;
  final bool isAutoMain;

  @override
  String get objectAction => 'phone_add';

  @override
  Json get properties => {
    ...PhoneContactsEditorAnalyticsEvent.labelPropertiesOf(label),
    'is_auto_main': isAutoMain,
  };

  const ContactsPhoneAdd(this.label, {required this.isAutoMain});
}

final class ContactsPhoneLabelChange extends PhoneContactsEditorAnalyticsEvent {
  final PhoneContactLabel label;

  @override
  String get objectAction => 'phone_label_change';

  @override
  Json get properties =>
      PhoneContactsEditorAnalyticsEvent.labelPropertiesOf(label);

  const ContactsPhoneLabelChange(this.label);
}

final class ContactsMainPhoneToggle extends PhoneContactsEditorAnalyticsEvent {
  final bool isMain;

  @override
  String get objectAction => 'main_phone_toggle';

  @override
  Json get properties => {'is_main': isMain};

  const ContactsMainPhoneToggle({required this.isMain});
}

final class ContactsPhoneRemove extends PhoneContactsEditorAnalyticsEvent {
  final PhoneContactLabel label;

  @override
  String get objectAction => 'phone_remove';

  @override
  Json get properties =>
      PhoneContactsEditorAnalyticsEvent.labelPropertiesOf(label);

  const ContactsPhoneRemove(this.label);
}

enum PhoneContactLabelKind { free, role }
