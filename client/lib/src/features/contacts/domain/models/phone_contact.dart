import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'phone_contact.g.dart';

@JsonSerializable()
class PhoneContact with Equatable {
  final String id;
  final String phone;
  final String? label;
  @JsonKey(defaultValue: false)
  final bool isMainPhone;

  @override
  List<Object?> get props => [id, phone, label, isMainPhone];

  const PhoneContact({
    required this.id,
    required this.phone,
    this.isMainPhone = false,
    this.label,
  });

  factory PhoneContact.fromJson(Json json) => _$PhoneContactFromJson(json);

  Json toJson() => _$PhoneContactToJson(this);

  Input_ContactsInsertInput toInsertInput() => Input_ContactsInsertInput(
    id: id.toUuid(),
    phone: phone,
    label: label,
    isMainPhone: isMainPhone,
  );

  Input_ContactsUpdates toUpdates() => Input_ContactsUpdates(
    where: Input_ContactsBoolExp(
      id: Input_UuidComparisonExp($_eq: id.toUuid()),
    ),
    $_set: Input_ContactsSetInput.fromJson({
      'phone': phone,
      'label': label,
      'isMainPhone': isMainPhone,
    }),
  );

  PhoneContact copyWith({String? phone}) => PhoneContact(
    id: id,
    phone: phone ?? this.phone,
    label: label,
    isMainPhone: isMainPhone,
  );
}
