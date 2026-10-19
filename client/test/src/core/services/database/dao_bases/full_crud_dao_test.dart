import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_server.dart';

void main() {
  const settleTime = Duration(seconds: 5);
  const mina = AshTestItem(id: 'mina', name: 'مينا');
  const marina = AshTestItem(id: 'marina', name: 'مارينا');

  test('streaming all rows lists the page results with the server count', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final dao = _TestItemsDAO(harness);
      final stream = dao.streamAll();
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);

      expect(emitted.last, [mina, marina]);
      expect(stream.currentTotalCount, 2);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('a list follows the change feed', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina]);
      final dao = _TestItemsDAO(harness);
      final stream = dao.streamAll();
      final emitted = <List<AshTestItem>>[];
      final subscription = stream.listen(emitted.add);
      async.elapse(settleTime);

      harness.server.rows.add(marina);
      harness.announce([
        EntityChange(type: AshTestItem.typename, id: marina.id, op: 'insert'),
      ]);
      async.elapse(settleTime);

      expect(emitted.last, [mina, marina]);

      unawaited(subscription.cancel());
      unawaited(stream.dispose());
      harness.dispose();
    });
  });

  test('a one-off query answers the current rows', () async {
    final harness = LiveQueryHarness([mina, marina]);
    addTearDown(harness.dispose);

    expect(await _TestItemsDAO(harness).query(onlineFirst: true), [
      mina,
      marina,
    ]);
  });

  test('streaming one record emits it', () {
    fakeAsync((async) {
      final harness = LiveQueryHarness([mina, marina]);
      final emitted = <AshTestItem?>[];
      final subscription = _TestItemsDAO(
        harness,
      ).streamSingleById(id: marina.id).listen(emitted.add);
      async.elapse(settleTime);

      expect(emitted.last, marina);

      unawaited(subscription.cancel());
      harness.dispose();
    });
  });

  test(
    'creating sends the desired state and answers the created record',
    () async {
      final harness = LiveQueryHarness([]);
      addTearDown(harness.dispose);

      final created = await _TestItemsDAO(harness)
          .createObject(newObject: mina);

      expect(created, mina);
      expect(harness.server.rows, [mina]);
    },
  );

  test(
    'updating sends the desired state and answers the updated record',
    () async {
      final harness = LiveQueryHarness([mina]);
      addTearDown(harness.dispose);
      final renamed = mina.renamed('مينا جرجس');

      final updated = await _TestItemsDAO(
        harness,
      ).updateObject(newObject: renamed, oldObject: mina);

      expect(updated, renamed);
      expect(harness.server.rows, [renamed]);
    },
  );

  test('deleting answers the deleted record', () async {
    final harness = LiveQueryHarness([mina, marina]);
    addTearDown(harness.dispose);

    final deleted = await _TestItemsDAO(harness).deleteById(id: mina.id);

    expect(deleted, mina);
    expect(harness.server.rows, [marina]);
  });
}

class _TestItemsDAO extends FullCRUDDAO<AshTestItem> {
  static final _create = gql(r'''
    mutation createTestItem($input: CreateTestItemInput!) {
      createTestItem(input: $input) { result { id name } }
    }
  ''');
  static final _update = gql(r'''
    mutation updateTestItem($id: ID!, $input: UpdateTestItemInput!) {
      updateTestItem(id: $id, input: $input) { result { id name } }
    }
  ''');
  static final _destroy = gql(r'''
    mutation destroyTestItem($id: ID!) {
      destroyTestItem(id: $id) { result { id name } }
    }
  ''');

  @override
  late final StreamAllConfig<AshTestItem> baseStreamAllConfig = StreamAllConfig(
    document: LiveQueryHarness.listDocument,
    arguments: (_) => const ListQueryArguments(),
  );

  @override
  late final StreamSingleByIdConfig<AshTestItem> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(document: LiveQueryHarness.entityDocument);

  @override
  late final CreateObjectConfig<AshTestItem> baseCreateObjectConfig =
      CreateObjectConfig(
        document: _create,
        varsConstructor: ({required newObject}) => {
          'input': newObject.toJson(),
        },
      );

  @override
  late final UpdateObjectConfig<AshTestItem> baseUpdateObjectConfig =
      UpdateObjectConfig(
        document: _update,
        varsConstructor: ({required newObject}) => {
          'id': newObject.id,
          'input': newObject.toJson(),
        },
      );

  @override
  late final DeleteSingleByIdConfig<AshTestItem> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(document: _destroy);

  _TestItemsDAO(LiveQueryHarness harness)
    : super(
        db: DatabaseService(harness.client, liveQueries: harness.registry),
        fromJson: AshTestItem.fromJson,
      );
}
