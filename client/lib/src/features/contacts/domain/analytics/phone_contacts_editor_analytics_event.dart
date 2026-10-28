part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class PhoneContactsEditorAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'contacts';

  const PhoneContactsEditorAnalyticsEvent();
}

sealed class PhoneContactLabelAnalyticsEvent
    extends PhoneContactsEditorAnalyticsEvent {
  final PhoneContactLabel label;

  @override
  Json get properties => switch (label) {
    FreePhoneContactLabel() => {'label_kind': 'free'},
    RolePhoneContactLabel(:final role) => {
      'label_kind': 'role',
      'role_id': role.id,
    },
  };

  const PhoneContactLabelAnalyticsEvent(this.label);
}

final class ContactsPhoneAdd extends PhoneContactLabelAnalyticsEvent {
  final bool isAutoMain;

  @override
  String get objectAction => 'phone_add';

  @override
  Json get properties => {...super.properties, 'is_auto_main': isAutoMain};

  const ContactsPhoneAdd(super.label, {required this.isAutoMain});
}

final class ContactsPhoneLabelChange extends PhoneContactLabelAnalyticsEvent {
  @override
  String get objectAction => 'phone_label_change';

  const ContactsPhoneLabelChange(super.label);
}

final class ContactsMainPhoneToggle extends PhoneContactsEditorAnalyticsEvent {
  final bool isMain;

  @override
  String get objectAction => 'main_phone_toggle';

  @override
  Json get properties => {'is_main': isMain};

  const ContactsMainPhoneToggle({required this.isMain});
}

final class ContactsPhoneRemove extends PhoneContactLabelAnalyticsEvent {
  @override
  String get objectAction => 'phone_remove';

  const ContactsPhoneRemove(super.label);
}
