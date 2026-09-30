import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PhoneContactDraft with Equatable {
  final String key;
  final String? contactId;
  final String input;
  final String? phone;
  final PhoneContactLabel label;
  final bool isMainPhone;

  bool get canBeMain => label is FreePhoneContactLabel;

  @override
  List<Object?> get props => [key, contactId, input, phone, label, isMainPhone];

  const PhoneContactDraft({
    required this.key,
    required this.input,
    required this.label,
    this.isMainPhone = false,
    this.contactId,
    this.phone,
  });

  PhoneContactDraft copyWith({PhoneContactLabel? label, bool? isMainPhone}) =>
      PhoneContactDraft(
        key: key,
        contactId: contactId,
        input: input,
        phone: phone,
        label: label ?? this.label,
        isMainPhone: isMainPhone ?? this.isMainPhone,
      );

  PhoneContactDraft withInput(String input, {required String? phone}) =>
      PhoneContactDraft(
        key: key,
        contactId: contactId,
        input: input,
        phone: phone,
        label: label,
        isMainPhone: isMainPhone,
      );
}
