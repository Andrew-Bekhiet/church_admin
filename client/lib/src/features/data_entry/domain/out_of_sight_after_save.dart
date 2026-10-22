import 'package:church_admin/church_admin.dart';

class OutOfSightAfterSave {
  final User? user;

  Iterable<AdminOnData> get _grants => user?.adminOn ?? const [];

  const OutOfSightAfterSave(this.user);

  bool isMovedOutOfSight(ViewableWithID oldObject, ViewableWithID newObject) {
    final user = this.user;

    if (user == null ||
        user.permissions.readAllData ||
        user.permissions.writeAllData) {
      return false;
    }

    return switch ((oldObject, newObject)) {
      (final Person oldPerson, final Person newPerson) =>
        _seesPerson(oldPerson) && !_seesPerson(newPerson),
      (final Family oldFamily, final Family newFamily) =>
        _seesFamily(oldFamily) && !_seesFamily(newFamily),
      (final Store oldStore, final Store newStore) =>
        _seesStore(oldStore) && !_seesStore(newStore),
      _ => false,
    };
  }

  bool isMovedOutOfSightIgnoringAddress(Person oldPerson, Person newPerson) {
    final keepsFamily = oldPerson.family?.id == newPerson.family?.id;

    return isMovedOutOfSight(
      oldPerson,
      keepsFamily ? newPerson.copyWith(address: oldPerson.address) : newPerson,
    );
  }

  bool _seesPerson(Person person) =>
      person.id == user?.person?.id ||
      person.uid == user?.uid ||
      _isAreaAdminOn(person.address?.area) ||
      _grants.any(
        (grant) =>
            _seesThroughService(grant, person) ||
            _seesThroughGroup(grant, person),
      );

  bool _seesFamily(Family family) =>
      family.id == user?.person?.family?.id ||
      _isAreaAdminOn(family.address?.area);

  bool _seesStore(Store store) => _isAreaAdminOn(store.address?.area);

  bool _isAreaAdminOn(Area? area) =>
      area != null && _grants.any((grant) => grant.area?.id == area.id);

  bool _seesThroughGroup(AdminOnData grant, Person person) {
    final group = grant.group;

    return group != null &&
        (person.groups?.any((g) => g.id == group.id) ?? false);
  }

  bool _seesThroughService(AdminOnData grant, Person person) {
    final service = grant.service;
    final isInService =
        service != null &&
        (person.services?.any((s) => s.id == service.id) ?? false);
    final studyYear = grant.serviceStudyYearData;

    return isInService &&
        (grant.serviceGender ?? person.gender) == person.gender &&
        (studyYear == null || studyYear.order == person.studyYear?.order);
  }
}
