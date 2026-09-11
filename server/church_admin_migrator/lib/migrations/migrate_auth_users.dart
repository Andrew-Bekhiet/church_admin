import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/migration_log.dart';
import 'package:church_admin_migrator/migrations/map_legacy_permissions.dart';
import 'package:church_admin_migrator/migrations/resolve_migrated_person.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';

class _LegacyUserAggregate {
  ChurchDataUser? churchDataUser;
  MeetingHelperUser? meetingHelperUser;
}

class MigrateAuthUsers {
  static const _droppedFlagNames = [
    'approveLocations',
    'changeHistory',
    'dumpImages',
    'birthdayNotify',
    'confessionsNotify',
    'tanawolNotify',
    'kodasNotify',
    'meetingNotify',
    'visitNotify',
  ];

  static void merge({
    required Iterable<ChurchDataUser> churchDataUsers,
    required Iterable<({IdReference ref, List<String> allowedUsers})>
    churchDataAreaAllowedUsers,
    required Iterable<MeetingHelperUser> meetingHelperUsers,
    required Iterable<({IdReference ref, List<String> allowedUsers})>
    meetingHelperClassAllowedUsers,
    required ChurchAdminContext churchAdminContext,
  }) {
    final churchDataScopesByUid = _churchDataScopesByUid(
      churchDataAreaAllowedUsers,
      churchAdminContext,
    );
    final meetingHelperScopesByUid = _meetingHelperScopesByUid(
      meetingHelperClassAllowedUsers,
      meetingHelperUsers,
      churchAdminContext,
    );
    final aggregates = _aggregateByEmail(churchDataUsers, meetingHelperUsers);

    final seenNames = <String>{};
    final claimedPersonUsers = <String, String>{};
    var mergedAcrossBothApps = 0;
    var personsCreated = 0;
    var namesDisambiguated = 0;
    final droppedFlagHolders = <String, int>{};

    for (final aggregate in aggregates.values) {
      final churchDataUser = aggregate.churchDataUser;
      final meetingHelperUser = aggregate.meetingHelperUser;
      final survivingId = meetingHelperUser?.personId ?? churchDataUser?.uid;

      if (survivingId == null || survivingId.isEmpty) continue;
      if (churchDataUser != null && meetingHelperUser != null) {
        mergedAcrossBothApps++;
      }

      final merged = MapLegacyPermissions.mergeLegacyUsers(
        userId: survivingId,
        churchDataUser: churchDataUser,
        churchDataScopes: churchDataUser != null
            ? churchDataScopesByUid[churchDataUser.uid] ?? const []
            : const [],
        meetingHelperUser: meetingHelperUser,
        meetingHelperScopes: meetingHelperUser != null
            ? meetingHelperScopesByUid[meetingHelperUser.uid] ?? const []
            : const [],
      );

      for (final flag in merged.mapped.droppedFlags) {
        droppedFlagHolders.update(flag, (n) => n + 1, ifAbsent: () => 1);
      }

      final (name: resolvedName, wasRenamed: renamed) = _disambiguateName(
        merged.name,
        survivingId,
        seenNames,
      );
      if (renamed) namesDisambiguated++;

      final email =
          _canonicalEmail(churchDataUser?.email) ??
          _canonicalEmail(meetingHelperUser?.email);

      final resolvedPerson = ResolveMigratedPerson.find(
        churchAdminContext: churchAdminContext,
        churchDataUser: churchDataUser,
        meetingHelperUser: meetingHelperUser,
      );

      final (:person, wasCreated: created) = ResolveMigratedPerson.claim(
        churchAdminContext: churchAdminContext,
        resolved: resolvedPerson,
        survivingId: survivingId,
        name: resolvedName,
        claimedPersonUsers: claimedPersonUsers,
      );
      if (created) personsCreated++;

      churchAdminContext.users[IdReference.fromPath(
        'Users/$survivingId',
      )] = User(
        uid: survivingId,
        name: resolvedName,
        email: email,
        permissions: merged.mapped.permissions,
        adminOn: merged.mapped.adminOnRows,
        person: person,
      );
    }

    _logSummary(
      totalUsers: churchAdminContext.users.length,
      mergedAcrossBothApps: mergedAcrossBothApps,
      personsCreated: personsCreated,
      namesDisambiguated: namesDisambiguated,
      droppedFlagHolders: droppedFlagHolders,
    );
  }

  static Map<String, List<LegacyScopeGrant>> _churchDataScopesByUid(
    Iterable<({IdReference ref, List<String> allowedUsers})> areaAllowedUsers,
    ChurchAdminContext churchAdminContext,
  ) {
    final scopesByUid = <String, List<LegacyScopeGrant>>{};

    for (final entry in areaAllowedUsers) {
      if (entry.allowedUsers.isEmpty) continue;

      final migratedArea = churchAdminContext.areas[entry.ref];
      if (migratedArea == null) {
        MigrationLog.logger.w(
          'Area ${entry.ref.path} did not migrate; skipping admin grants '
          'for ${entry.allowedUsers.length} allowed user(s)',
        );
        continue;
      }

      final grant = MapLegacyPermissions.areaGrant(migratedArea);
      for (final uid in entry.allowedUsers) {
        scopesByUid.putIfAbsent(uid, () => []).add(grant);
      }
    }

    return scopesByUid;
  }

  static Map<String, List<LegacyScopeGrant>> _meetingHelperScopesByUid(
    Iterable<({IdReference ref, List<String> allowedUsers})> classAllowedUsers,
    Iterable<MeetingHelperUser> meetingHelperUsers,
    ChurchAdminContext churchAdminContext,
  ) {
    final scopesByUid = <String, List<LegacyScopeGrant>>{};

    for (final entry in classAllowedUsers) {
      if (entry.allowedUsers.isEmpty) continue;

      final migratedClass = churchAdminContext.classes[entry.ref];
      final service = migratedClass?.service;
      if (service == null) {
        MigrationLog.logger.w(
          'Class ${entry.ref.path} did not migrate; skipping admin grants '
          'for ${entry.allowedUsers.length} allowed user(s)',
        );
        continue;
      }

      final grant = MapLegacyPermissions.serviceGrant(
        service,
        studyYear: migratedClass?.studyYear,
        gender: migratedClass?.serviceGender,
      );
      for (final uid in entry.allowedUsers) {
        scopesByUid.putIfAbsent(uid, () => []).add(grant);
      }
    }

    for (final user in meetingHelperUsers) {
      for (final serviceRef in user.adminServices) {
        final service = churchAdminContext.services[serviceRef];
        if (service == null) {
          MigrationLog.logger.w(
            'Service ${serviceRef.path} in adminServices of user '
            '${user.uid} did not migrate; skipping',
          );
          continue;
        }

        scopesByUid
            .putIfAbsent(user.uid, () => [])
            .add(MapLegacyPermissions.serviceGrant(service));
      }
    }

    return scopesByUid;
  }

  static Map<String, _LegacyUserAggregate> _aggregateByEmail(
    Iterable<ChurchDataUser> churchDataUsers,
    Iterable<MeetingHelperUser> meetingHelperUsers,
  ) {
    final aggregates = <String, _LegacyUserAggregate>{};

    for (final user in churchDataUsers) {
      final key = _canonicalEmail(user.email) ?? 'cd:${user.uid}';
      (aggregates[key] ??= _LegacyUserAggregate()).churchDataUser = user;
    }

    for (final user in meetingHelperUsers) {
      final key = _canonicalEmail(user.email) ?? 'mh:${user.personId}';
      (aggregates[key] ??= _LegacyUserAggregate()).meetingHelperUser = user;
    }

    return aggregates;
  }

  static String? _canonicalEmail(String? email) {
    final trimmed = email?.trim().toLowerCase();

    return trimmed != null && trimmed.isNotEmpty ? trimmed : null;
  }

  static ({String name, bool wasRenamed}) _disambiguateName(
    String rawName,
    String fallbackSeed,
    Set<String> seenNames,
  ) {
    final base = rawName.trim().isEmpty
        ? 'مستخدم مرحل $fallbackSeed'
        : rawName.trim();

    if (seenNames.add(base)) {
      return (name: base, wasRenamed: false);
    }

    var suffix = 2;
    while (!seenNames.add('$base ($suffix)')) {
      suffix++;
    }
    final renamed = '$base ($suffix)';
    MigrationLog.logger.w('Renamed duplicate user name "$base" to "$renamed"');

    return (name: renamed, wasRenamed: true);
  }

  static void _logSummary({
    required int totalUsers,
    required int mergedAcrossBothApps,
    required int personsCreated,
    required int namesDisambiguated,
    required Map<String, int> droppedFlagHolders,
  }) {
    final droppedFlagsSummary = _droppedFlagNames
        .map((flag) => '$flag: ${droppedFlagHolders[flag] ?? 0}')
        .join(', ');

    MigrationLog.logger.i(
      'Migrated $totalUsers auth user(s); $mergedAcrossBothApps merged '
      'across ChurchData and MeetingHelper; $personsCreated new person(s) '
      'created; $namesDisambiguated name(s) disambiguated.\n'
      'Dropped legacy flag holder counts: $droppedFlagsSummary',
    );
  }
}
