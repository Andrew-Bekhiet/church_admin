// ignore_for_file: type_literal_in_constant_pattern

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/id_reference.dart';

class ChurchAdminContext {
  final Map<IdReference, Church> churches;
  final Map<IdReference, Job> jobs;
  final Map<IdReference, PersonState> personStates;
  final Map<IdReference, PersonType> personTypes;
  final Map<IdReference, Qualification> qualifications;
  final Map<IdReference, School> schools;
  final Map<IdReference, ShammasLevel> shammasLevels;
  final Map<int, StudyYear> studyYears;
  final Map<IdReference, College> colleges;
  final Map<IdReference, Father> fathers;
  final Map<IdReference, Address> addresses;
  final Map<IdReference, Area> areas;
  final List<({IdReference areaId, IdReference streetId})> areasStreets;
  final Map<IdReference, Class> classes;
  final Map<IdReference, Service> services;
  final Map<IdReference, Meeting> meetings;
  final Map<IdReference, Family> families;
  final List<({IdReference parentFamilyId, IdReference childFamilyId})>
  familiesFamilies;
  final Map<IdReference, Person> persons;
  final Map<IdReference, Store> stores;
  final Map<IdReference, Street> streets;
  final Map<IdReference, User> users;

  /// `history.visit_history` rows. [recordId] is the original Firestore id of
  /// the visited family/store/person (converted to a UUID on export).
  final List<
    ({String table, String recordId, DateTime time, bool isFatherVisit})
  >
  visitHistory;

  /// `history.call_history` rows.
  final List<({String personId, DateTime time})> callHistory;

  /// `history.confession_history` rows.
  final List<({String personId, DateTime time})> confessionHistory;

  /// `history.kodas_history` rows (also receives the legacy `lastTanawol`).
  final List<({String personId, DateTime time})> kodasHistory;

  ChurchAdminContext()
    : churches = {},
      jobs = {},
      personStates = {},
      personTypes = {},
      qualifications = {},
      schools = {},
      shammasLevels = {},
      studyYears = {},
      colleges = {},
      fathers = {},
      addresses = {},
      areas = {},
      areasStreets = [],
      classes = {},
      families = {},
      familiesFamilies = [],
      persons = {},
      stores = {},
      streets = {},
      services = {},
      meetings = {},
      users = {},
      visitHistory = [],
      callHistory = [],
      confessionHistory = [],
      kodasHistory = [];
}
