// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'dart:ui';

import 'package:churchdata_core/churchdata_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../postgis.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person extends ViewableWithID with _$Person {
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
}

Color? colorFromInt(dynamic data) => data is int ? Color(data) : null;
int? colorToInt(Color? data) => data?.value;
