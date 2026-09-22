import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'invitation.freezed.dart';
part 'invitation.g.dart';

@freezed
@JsonSerializable()
class Invitation with _$Invitation implements ToJson {
  @override
  final String id;

  @override
  final String userUid;

  @override
  final String code;

  @override
  @LocalDateTimeConverter()
  final DateTime createdAt;

  @override
  @LocalDateTimeConverter()
  final DateTime expiresAt;

  @override
  @LocalDateTimeConverter()
  final DateTime? claimedAt;

  bool get isClaimed => claimedAt != null;

  const Invitation({
    required this.id,
    required this.userUid,
    required this.code,
    required this.createdAt,
    required this.expiresAt,
    this.claimedAt,
  });

  factory Invitation.fromJson(Map<String, Object?> json) =>
      _$InvitationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvitationToJson(this);

  bool isActiveAt(DateTime now) => !isClaimed && expiresAt.isAfter(now);

  bool isExpiredAt(DateTime now) => !isClaimed && !expiresAt.isAfter(now);

  String statusCaptionAt(DateTime now) {
    final dateFormat = DateFormat('yyyy/M/d');

    return switch (this) {
      Invitation(:final claimedAt?) =>
        'استُخدمت في ${dateFormat.format(claimedAt)}',
      _ when isExpiredAt(now) => 'انتهت في ${dateFormat.format(expiresAt)}',
      _ => 'صالحة حتى ${dateFormat.format(expiresAt)}',
    };
  }
}
