part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class PhoneContactsEditorAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'contacts';

  const PhoneContactsEditorAnalyticsEvent();
}

sealed class PhoneContactLabelAnalyticsEvent
    extends PhoneContactsEditorAnalyticsEvent {
  final PhoneContactLabelKind labelKind;
  final String? roleId;

  @override
  Json get properties => {'label_kind': labelKind.name, 'role_id': ?roleId};

  PhoneContactLabelAnalyticsEvent(PhoneContactLabel label)
    : labelKind = switch (label) {
        FreePhoneContactLabel() => PhoneContactLabelKind.free,
        RolePhoneContactLabel() => PhoneContactLabelKind.role,
      },
      roleId = switch (label) {
        FreePhoneContactLabel() => null,
        RolePhoneContactLabel(:final role) => role.id,
      };
}

final class ContactsPhoneAdd extends PhoneContactLabelAnalyticsEvent {
  final bool isAutoMain;

  @override
  String get objectAction => 'phone_add';

  @override
  Json get properties => {...super.properties, 'is_auto_main': isAutoMain};

  ContactsPhoneAdd(super.label, {required this.isAutoMain});
}

final class ContactsPhoneLabelChange extends PhoneContactLabelAnalyticsEvent {
  @override
  String get objectAction => 'phone_label_change';

  ContactsPhoneLabelChange(super.label);
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

  ContactsPhoneRemove(super.label);
}

enum PhoneContactLabelKind { free, role }
