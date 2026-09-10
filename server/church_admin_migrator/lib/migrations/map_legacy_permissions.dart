import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';

typedef LegacyPermissionFlags = ({
  bool approved,
  bool superAccess,
  bool write,
  bool manageUsers,
  bool manageAllowedUsers,
  bool manageDeleted,
  bool export,
  bool recordAttendance,
  bool recordServantsAttendance,
  Set<String> droppedFlags,
});

typedef LegacyScopeGrant = ({
  Area? area,
  Service? service,
  StudyYear? studyYear,
  bool? gender,
});

typedef MappedLegacyPermissions = ({
  PermissionsSet permissions,
  List<AdminOnData> adminOnRows,
  Set<String> droppedFlags,
});

typedef MergedLegacyUser = ({String name, MappedLegacyPermissions mapped});

class MapLegacyPermissions {
  static const _meetingHelperDroppedFlags = [
    'changeHistory',
    'dumpImages',
    'birthdayNotify',
    'confessionsNotify',
    'tanawolNotify',
    'kodasNotify',
    'meetingNotify',
    'visitNotify',
  ];

  static LegacyScopeGrant areaGrant(Area area) =>
      (area: area, service: null, studyYear: null, gender: null);

  static LegacyScopeGrant serviceGrant(
    Service service, {
    StudyYear? studyYear,
    bool? gender,
  }) => (area: null, service: service, studyYear: studyYear, gender: gender);

  static LegacyPermissionFlags flagsFromChurchDataUser(ChurchDataUser user) => (
    approved: user.approved,
    superAccess: user.superAccess,
    write: user.write,
    manageUsers: user.manageUsers,
    manageAllowedUsers: user.manageAllowedUsers,
    manageDeleted: user.manageDeleted,
    export: user.exportAreas,
    recordAttendance: false,
    recordServantsAttendance: false,
    droppedFlags: {
      if (user.approveLocations) 'approveLocations',
      if (user.birthdayNotify) 'birthdayNotify',
      if (user.confessionsNotify) 'confessionsNotify',
      if (user.tanawolNotify) 'tanawolNotify',
    },
  );

  static LegacyPermissionFlags flagsFromMeetingHelperUser(
    MeetingHelperUser user,
  ) {
    bool has(String flag) => user.permissions.contains(flag);

    return (
      approved: has('approved'),
      superAccess: has('superAccess'),
      write: has('write'),
      manageUsers: has('manageUsers'),
      manageAllowedUsers: has('manageAllowedUsers'),
      manageDeleted: has('manageDeleted'),
      export: has('export'),
      recordAttendance: has('recordHistory'),
      recordServantsAttendance: has('secretary'),
      droppedFlags: {
        for (final flag in _meetingHelperDroppedFlags)
          if (has(flag)) flag,
      },
    );
  }

  static MappedLegacyPermissions mapLegacyPermissions({
    required String userId,
    required LegacyPermissionFlags flags,
    required List<LegacyScopeGrant> scopes,
  }) {
    final globalPermissions = _globalPermissions(flags);

    return (
      permissions: PermissionsSet.fromSet({
        ...globalPermissions,
        for (final permission in globalPermissions) ...permission.requires,
      }),
      adminOnRows: _adminOnRows(userId, flags, scopes),
      droppedFlags: flags.droppedFlags,
    );
  }

  static MergedLegacyUser mergeLegacyUsers({
    required String userId,
    ChurchDataUser? churchDataUser,
    List<LegacyScopeGrant> churchDataScopes = const [],
    MeetingHelperUser? meetingHelperUser,
    List<LegacyScopeGrant> meetingHelperScopes = const [],
  }) {
    final fromChurchData = churchDataUser == null
        ? null
        : mapLegacyPermissions(
            userId: userId,
            flags: flagsFromChurchDataUser(churchDataUser),
            scopes: churchDataScopes,
          );
    final fromMeetingHelper = meetingHelperUser == null
        ? null
        : mapLegacyPermissions(
            userId: userId,
            flags: flagsFromMeetingHelperUser(meetingHelperUser),
            scopes: meetingHelperScopes,
          );

    return (
      name: switch (meetingHelperUser?.name) {
        final name? when name.isNotEmpty => name,
        _ => churchDataUser?.name ?? '',
      },
      mapped: _mergeMapped(fromChurchData, fromMeetingHelper),
    );
  }

  static Set<UserPermission> _globalPermissions(LegacyPermissionFlags flags) {
    final superAccess = flags.superAccess;

    return {
      if (flags.approved) UserPermission.approved,
      if (superAccess) UserPermission.readAllData,
      if (superAccess && flags.write) UserPermission.writeAllData,
      if (flags.manageUsers) UserPermission.manageAllUsers,
      if (flags.manageDeleted) UserPermission.recoverDeleted,
      if (superAccess && flags.export) UserPermission.exportAllData,
      if (superAccess && flags.recordAttendance)
        UserPermission.recordAllAttendance,
      if (superAccess && flags.recordServantsAttendance)
        UserPermission.recordAllServantsAttendance,
    };
  }

  static List<AdminOnData> _adminOnRows(
    String userId,
    LegacyPermissionFlags flags,
    List<LegacyScopeGrant> scopes,
  ) {
    final rowsById = <String, AdminOnData>{};

    for (final scope in scopes) {
      final permissionId = _permissionId(userId, scope);
      rowsById[permissionId] ??= _stampedRow(permissionId, scope, flags);
    }

    return rowsById.values.toList();
  }

  static String _permissionId(String userId, LegacyScopeGrant scope) =>
      switch (scope) {
        (area: final Area area?, service: null, studyYear: _, gender: _) =>
          '$userId-area-${area.id}',
        (
          area: null,
          service: final Service service?,
          studyYear: final StudyYear? studyYear,
          gender: final bool? gender,
        ) =>
          '$userId-service-${service.id}-${studyYear?.order}-$gender',
        _ => throw ArgumentError(
          'LegacyScopeGrant must set exactly one of area/service',
        ),
      };

  static AdminOnData _stampedRow(
    String permissionId,
    LegacyScopeGrant scope,
    LegacyPermissionFlags flags,
  ) {
    final stampScoped = !flags.superAccess;
    final adminOnUsers = stampScoped && flags.manageAllowedUsers;
    final allowEdit = stampScoped && (flags.write || adminOnUsers);

    return switch (scope) {
      (area: final Area area?, service: null, studyYear: _, gender: _) =>
        AdminOnData(
          permissionId: permissionId,
          area: area,
          areaAllowEdit: allowEdit ? true : null,
          areaAllowExport: stampScoped && flags.export ? true : null,
          areaAdminOnUsers: adminOnUsers ? true : null,
        ),
      (
        area: null,
        service: final Service service?,
        studyYear: final StudyYear? studyYear,
        gender: final bool? gender,
      ) =>
        AdminOnData(
          permissionId: permissionId,
          service: service,
          serviceStudyYearData: studyYear,
          serviceGender: gender,
          serviceAllowEdit: allowEdit ? true : null,
          serviceAllowExport: stampScoped && flags.export ? true : null,
          serviceAdminOnUsers: adminOnUsers ? true : null,
          serviceAllowRecordAttendance: stampScoped && flags.recordAttendance
              ? true
              : null,
          serviceAllowRecordServantsAttendance:
              stampScoped && flags.recordServantsAttendance ? true : null,
        ),
      _ => throw ArgumentError(
        'LegacyScopeGrant must set exactly one of area/service',
      ),
    };
  }

  static MappedLegacyPermissions _mergeMapped(
    MappedLegacyPermissions? a,
    MappedLegacyPermissions? b,
  ) {
    if (a == null && b == null) {
      return (
        permissions: const PermissionsSet.empty(),
        adminOnRows: const [],
        droppedFlags: const {},
      );
    }
    if (a == null) return b!;
    if (b == null) return a;

    final rowsById = <String, AdminOnData>{
      for (final row in a.adminOnRows) row.permissionId: row,
    };
    for (final row in b.adminOnRows) {
      final existing = rowsById[row.permissionId];
      rowsById[row.permissionId] = existing == null
          ? row
          : _orMergeRows(existing, row);
    }

    return (
      permissions: PermissionsSet.fromSet({...a.permissions, ...b.permissions}),
      adminOnRows: rowsById.values.toList(),
      droppedFlags: {...a.droppedFlags, ...b.droppedFlags},
    );
  }

  static AdminOnData _orMergeRows(AdminOnData a, AdminOnData b) => a.copyWith(
    areaAllowEdit: (a.areaAllowEdit ?? false) || (b.areaAllowEdit ?? false),
    areaAllowExport:
        (a.areaAllowExport ?? false) || (b.areaAllowExport ?? false),
    areaAdminOnUsers:
        (a.areaAdminOnUsers ?? false) || (b.areaAdminOnUsers ?? false),
    serviceAllowEdit:
        (a.serviceAllowEdit ?? false) || (b.serviceAllowEdit ?? false),
    serviceAllowExport:
        (a.serviceAllowExport ?? false) || (b.serviceAllowExport ?? false),
    serviceAdminOnUsers:
        (a.serviceAdminOnUsers ?? false) || (b.serviceAdminOnUsers ?? false),
    serviceAllowRecordAttendance:
        (a.serviceAllowRecordAttendance ?? false) ||
        (b.serviceAllowRecordAttendance ?? false),
    serviceAllowRecordServantsAttendance:
        (a.serviceAllowRecordServantsAttendance ?? false) ||
        (b.serviceAllowRecordServantsAttendance ?? false),
  );
}
