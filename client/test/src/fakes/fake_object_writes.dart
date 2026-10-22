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
  Object? deleteError;

  Future<T> createObject({required T newObject}) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    createdObjects.add(newObject);

    return newObject;
  }

  Future<T?> updateObject({
    required T newObject,
    required T oldObject,
  }) async {
    await saveGate?.future;
    if (saveError case final error?) throw error;
    updates.add((savedObject: oldObject, editedObject: newObject));

    return newObject;
  }

  Future<T?> deleteById({required String id}) async {
    await deleteGate?.future;
    if (deleteError case final error?) throw error;
    deletedIds.add(id);

    return null;
  }
}
