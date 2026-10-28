import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakePersonsDAO extends Fake implements PersonsDAO {
  final List<Person> createdPeople = [];
  final List<Person> updatedPeople = [];
  final List<String> deletedPersonIds = [];

  late final Completer<Person?> savedMembershipsResponse = Completer<Person?>();
  Completer<void>? saveGate;
  Completer<void>? deleteGate;
  Object? saveError;
  Object? deleteError;

  void respondWithSavedMemberships(Person? saved) =>
      savedMembershipsResponse.complete(saved);

  @override
  Future<Person?> personServicesClassesGroups({required String personId}) =>
      savedMembershipsResponse.future;

  @override
  Future<Person> createObject({required Person newObject}) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    createdPeople.add(newObject);

    return newObject;
  }

  @override
  Future<Person?> updateObject({
    required Person newObject,
    required Person oldObject,
  }) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    updatedPeople.add(newObject);

    return newObject;
  }

  List<Person> personsWithPhoneContacts = const [];
  Object? phoneContactsError;

  @override
  Future<List<Person>?> personsPhoneContacts({
    required Iterable<String> personsIds,
  }) async {
    if (phoneContactsError case final error?) throw error;

    return personsWithPhoneContacts
        .where((person) => personsIds.contains(person.id))
        .toList();
  }

  @override
  Future<Person?> deleteById({required String id}) async {
    await deleteGate?.future;
    if (deleteError case final error?) throw error;
    deletedPersonIds.add(id);

    return null;
  }
}
