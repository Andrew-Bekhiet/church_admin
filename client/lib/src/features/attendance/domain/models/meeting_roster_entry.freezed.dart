// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting_roster_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MeetingRosterEntry {
  bool get asServant;
  Person get person;
  List<AttendanceRecord> get attendanceHistory;

  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeetingRosterEntryCopyWith<MeetingRosterEntry> get copyWith =>
      _$MeetingRosterEntryCopyWithImpl<MeetingRosterEntry>(
        this as MeetingRosterEntry,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MeetingRosterEntry &&
            (identical(other.asServant, asServant) ||
                other.asServant == asServant) &&
            (identical(other.person, person) || other.person == person) &&
            const DeepCollectionEquality().equals(
              other.attendanceHistory,
              attendanceHistory,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    asServant,
    person,
    const DeepCollectionEquality().hash(attendanceHistory),
  );

  @override
  String toString() {
    return 'MeetingRosterEntry(asServant: $asServant, person: $person, attendanceHistory: $attendanceHistory)';
  }
}

/// @nodoc
abstract mixin class $MeetingRosterEntryCopyWith<$Res> {
  factory $MeetingRosterEntryCopyWith(
    MeetingRosterEntry value,
    $Res Function(MeetingRosterEntry) _then,
  ) = _$MeetingRosterEntryCopyWithImpl;
  @useResult
  $Res call({
    bool asServant,
    Person person,
    List<AttendanceRecord> attendanceHistory,
  });
}

/// @nodoc
class _$MeetingRosterEntryCopyWithImpl<$Res>
    implements $MeetingRosterEntryCopyWith<$Res> {
  _$MeetingRosterEntryCopyWithImpl(this._self, this._then);

  final MeetingRosterEntry _self;
  final $Res Function(MeetingRosterEntry) _then;

  /// Create a copy of MeetingRosterEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asServant = null,
    Object? person = null,
    Object? attendanceHistory = null,
  }) {
    return _then(
      MeetingRosterEntry(
        asServant: null == asServant
            ? _self.asServant
            : asServant // ignore: cast_nullable_to_non_nullable
                  as bool,
        person: null == person
            ? _self.person
            : person // ignore: cast_nullable_to_non_nullable
                  as Person,
        attendanceHistory: null == attendanceHistory
            ? _self.attendanceHistory
            : attendanceHistory // ignore: cast_nullable_to_non_nullable
                  as List<AttendanceRecord>,
      ),
    );
  }
}
