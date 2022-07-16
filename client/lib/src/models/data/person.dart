// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart' hide Json;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person extends ViewableWithID with _$Person implements PhotoObjectBase {
  factory Person({
    required String id,
    required String name,
    String? address,
    @JsonKey(fromJson: pointFromJson, toJson: pointToJson) Point? geolocation,
    String? mainPhone,
    @Default({}) Json otherPhones,
    DateTime? birthdate,
    @Default(true) bool gender,
    @Default(false) bool isShammas,
    String? shammasLevel,
    String? schoolID,
    String? collegeID,
    String? churchID,
    String? fatherID,
    @Default(false) bool isStudent,
    String? jobID,
    String? jobDescription,
    String? qualificationID,
    String? personTypeID,
    String? stateID,
    @Default(false) bool isServant,
    String? notes,
    String? uid,
    String? familyID,
    String? storeID,
    int? studyYearID,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    @JsonKey(name: 'photo_updated_at') DateTime? photoUpdatedAt,
    DateTime? lastConfession,
    DateTime? lastKodas,
  }) = _Person;
  Person._() : super();

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  @override
  IconData get defaultIcon => Icons.person;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl:
              GetIt.I<CAFunctionsService>().getDownloadUrl('persons', id),
          fullPath: 'persons/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();
}
