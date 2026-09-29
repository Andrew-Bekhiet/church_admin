import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'phone_contact.freezed.dart';
part 'phone_contact.g.dart';

@freezed
@JsonSerializable()
class PhoneContact with _$PhoneContact {
  static const String defaultLabel = 'رقم الهاتف';

  static String roleLabel(String roleName) =>
      roleName.startsWith('ال') ? roleName : 'ال$roleName';

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

  bool get isFamilyRole => personId == null && personTypeId != null;

  bool get isOwn => personTypeId == null;

  ContactOwner get owner => isFamilyRole
      ? FamilyRoleContactOwner(familyId: familyId, personTypeId: personTypeId)
      : PersonContactOwner(personId: personId);

  String? get ownLabel {
    final trimmed = label?.trim();

    return trimmed == null || trimmed.isEmpty ? null : trimmed;
  }

  String get displayLabel {
    if (ownLabel case final ownLabel?) return ownLabel;
    if (personType?.name case final roleName? when roleName.isNotEmpty) {
      return roleLabel(roleName);
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

  PhoneContact withRole(PersonType role, String? familyId) => copyWith(
    personId: null,
    familyId: familyId,
    personTypeId: role.id,
    personType: role,
    label: null,
    isMainPhone: false,
  );

  PhoneContact ownedBy(String personId) => copyWith(
    personId: personId,
    familyId: null,
    personTypeId: null,
    personType: null,
  );
}
