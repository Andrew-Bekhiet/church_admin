import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'phone_contact.freezed.dart';
part 'phone_contact.g.dart';

@freezed
@JsonSerializable()
class PhoneContact with _$PhoneContact {
  static const String defaultLabel = 'رقم الهاتف';

  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  final String? personId;

  @override
  final String? familyId;

  @override
  final String? personTypeId;

  @override
  final PersonType? personType;

  @override
  final String? label;

  @override
  @JsonKey(defaultValue: '')
  final String phone;

  @override
  final bool isMainPhone;

  bool get isFamilyRole => familyId != null;

  ContactOwner get owner => switch (familyId) {
    final familyId? => FamilyRoleContactOwner(
      familyId: familyId,
      personTypeId: personTypeId,
    ),
    null => const PersonContactOwner(),
  };

  String? get ownLabel {
    final trimmed = label?.trim();

    return trimmed == null || trimmed.isEmpty ? null : trimmed;
  }

  String get displayLabel {
    if (ownLabel case final ownLabel?) return ownLabel;
    if (personType?.name case final roleName? when roleName.isNotEmpty) {
      return roleName.startsWith('ال') ? roleName : 'ال$roleName';
    }

    return defaultLabel;
  }

  const PhoneContact({
    required this.id,
    required this.phone,
    this.isMainPhone = false,
    this.personId,
    this.familyId,
    this.personTypeId,
    this.personType,
    this.label,
  });

  factory PhoneContact.create({
    required String phone,
    bool isMainPhone = false,
    String? label,
    String? familyId,
    String? personTypeId,
  }) => PhoneContact(
    id: const Uuid().v4(),
    phone: phone,
    label: label,
    familyId: familyId,
    personTypeId: personTypeId,
    isMainPhone: isMainPhone,
  );

  factory PhoneContact.fromJson(Map<String, Object?> json) =>
      _$PhoneContactFromJson(json);

  Json toJson() => _$PhoneContactToJson(this);
}
