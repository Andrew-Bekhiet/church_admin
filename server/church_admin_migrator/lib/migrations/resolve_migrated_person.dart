import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/migration_log.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/church_data/models/church_data_user.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/meeting_helper_user.dart';
import 'package:church_admin_migrator/utils/fuzzy_match.dart';
import 'package:church_admin_migrator/utils/normalize_string.dart';

class ResolveMigratedPerson {
  static Person? find({
    required ChurchAdminContext churchAdminContext,
    required ChurchDataUser? churchDataUser,
    required MeetingHelperUser? meetingHelperUser,
  }) {
    final personRef = churchDataUser?.personRef;
    if (personRef != null && personRef.isNotEmpty) {
      final ref = _tryParsePersonRef(personRef);
      final person = ref != null ? churchAdminContext.persons[ref] : null;
      if (person != null) return person;

      MigrationLog.logger.w(
        'ChurchData personRef "$personRef" for user ${churchDataUser?.uid} '
        'did not resolve to a migrated person',
      );
    }

    if (meetingHelperUser != null && MigrationLog.isSilentMigration) {
      final match = _fuzzyMatch(churchAdminContext, meetingHelperUser.name);
      if (match != null) return match;
    }

    return null;
  }

  static ({Person person, bool wasCreated}) claim({
    required ChurchAdminContext churchAdminContext,
    required Person? resolved,
    required String survivingId,
    required String name,
    required Map<String, String> claimedPersonUsers,
  }) {
    var person = resolved;

    if (person != null) {
      final claimedBy = claimedPersonUsers[person.id];
      if (claimedBy != null) {
        MigrationLog.logger.e(
          'Person ${person.id} is already claimed by user $claimedBy; '
          'creating a new person for user $survivingId instead',
        );
        person = null;
      }
    }

    final wasCreated = person == null;
    final resolvedPerson =
        person ?? _createServantPerson(churchAdminContext, survivingId, name);

    claimedPersonUsers[resolvedPerson.id] = survivingId;

    return (
      person: _stampUid(churchAdminContext, resolvedPerson, survivingId),
      wasCreated: wasCreated,
    );
  }

  static IdReference? _tryParsePersonRef(String path) {
    try {
      return IdReference.fromPath(path);
    } on ArgumentError {
      return null;
    }
  }

  static Person? _fuzzyMatch(
    ChurchAdminContext churchAdminContext,
    String name,
  ) {
    final normalizedName = name.normalize();
    if (normalizedName.isEmpty) return null;

    Person? best;
    var bestScore = 0.86;
    final seenIds = <String>{};

    for (final person in churchAdminContext.persons.values) {
      if (!seenIds.add(person.id)) continue;

      final score = PersonSimilarity(
        name1: person.name.normalize(),
        name2: normalizedName,
      ).calculate();

      if (score > bestScore) {
        bestScore = score;
        best = person;
      }
    }

    return best;
  }

  static Person _createServantPerson(
    ChurchAdminContext churchAdminContext,
    String survivingId,
    String name,
  ) {
    final person = Person(
      id: 'user_${survivingId}_person',
      name: name,
      isServant: true,
    );

    churchAdminContext.persons[IdReference.fromPath('Persons/${person.id}')] =
        person;

    return person;
  }

  static Person _stampUid(
    ChurchAdminContext churchAdminContext,
    Person person,
    String uid,
  ) {
    final stamped = person.copyWith(uid: uid);

    for (final key
        in churchAdminContext.persons.entries
            .where((entry) => entry.value.id == person.id)
            .map((entry) => entry.key)
            .toList()) {
      churchAdminContext.persons[key] = stamped;
    }

    return stamped;
  }
}
