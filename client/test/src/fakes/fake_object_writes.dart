import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

mixin FakeObjectWrites<T extends ViewableWithID> on Fake {
  final List<T> createdObjects = [];
  final List<({T savedObject, T editedObject})> updates = [];
  final List<String> deletedIds = [];

  Completer<void>? saveGate;
  Completer<void>? deleteGate;
  Object? saveError;
  bool updatesFindNothing = false;
  Object? deleteError;

  Future<T> createObject({required T newObject}) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    final created = withIdAssignedByServer(newObject);
    createdObjects.add(created);

    return created;
  }

  T withIdAssignedByServer(T newObject) => newObject;

  Future<T?> updateObject({
    required T newObject,
    required T oldObject,
  }) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    updates.add((savedObject: oldObject, editedObject: newObject));
    final editTargetsSavedRow = newObject.id == oldObject.id;

    return updatesFindNothing || !editTargetsSavedRow ? null : newObject;
  }

  Future<T?> deleteById({required String id}) async {
    await deleteGate?.future;
    if (deleteError case final error?) throw error;
    deletedIds.add(id);

    return null;
  }
}
