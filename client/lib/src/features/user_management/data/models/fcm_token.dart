import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_token.freezed.dart';
part 'fcm_token.g.dart';

@freezed
@JsonSerializable()
class FcmToken with _$FcmToken implements ToJson {
  @override
  @JsonKey(defaultValue: '')
  final String uid;

  @override
  @JsonKey(defaultValue: '')
  final String token;

  @override
  @LocalDateTimeConverter()
  final DateTime? createdAt;

  const FcmToken({
    required this.uid,
    required this.token,
    this.createdAt,
  });

  factory FcmToken.fromJson(Map<String, Object?> json) =>
      _$FcmTokenFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FcmTokenToJson(this);
}
