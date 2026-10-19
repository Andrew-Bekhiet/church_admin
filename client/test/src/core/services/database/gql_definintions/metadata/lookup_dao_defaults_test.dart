import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

void main() {
  test('hidden churches are left out of the church list', () {
    const shown = Church(id: 'church-1', name: 'العذراء', isHidden: false);
    const hidden = Church(id: 'church-2', name: 'مار جرجس');
    final table = FakeAshTable(
      typename: 'Church',
      listRoot: 'churches',
      rows: const [shown, hidden],
    );

    expect(
      FakeAshBackend.settledListing(
        [table],
        (db) => db.metadata.churches.streamAll(),
      ),
      [shown],
    );
  });

  test('churches are listed by name', () {
    const first = Church(id: 'church-2', name: 'العذراء', isHidden: false);
    const second = Church(id: 'church-1', name: 'مار جرجس', isHidden: false);
    final table = FakeAshTable(
      typename: 'Church',
      listRoot: 'churches',
      rows: const [second, first],
    );

    expect(
      FakeAshBackend.settledListing(
        [table],
        (db) => db.metadata.churches.streamAll(),
      ),
      [first, second],
    );
  });

  test('hidden fathers are left out, the rest listed by name', () {
    const first = Father(id: 'father-3', name: 'أبونا بولس', isHidden: false);
    const second = Father(id: 'father-1', name: 'أبونا مينا', isHidden: false);
    const hidden = Father(id: 'father-2', name: 'أبونا داود');
    final table = FakeAshTable(
      typename: 'Father',
      listRoot: 'fathers',
      rows: const [second, hidden, first],
    );

    expect(
      FakeAshBackend.settledListing(
        [table],
        (db) => db.metadata.fathers.streamAll(),
      ),
      [first, second],
    );
  });

  test('person types list visible family-admin roles first, then by order', () {
    const father = PersonType(
      id: 'type-3',
      name: 'أب',
      order: 2,
      isFamilyAdmin: true,
      isHidden: false,
    );
    const son = PersonType(
      id: 'type-1',
      name: 'ابن',
      order: 1,
      isHidden: false,
    );
    const grandson = PersonType(
      id: 'type-2',
      name: 'حفيد',
      order: 3,
      isHidden: false,
    );
    const hidden = PersonType(id: 'type-4', name: 'غير ذلك');
    final table = FakeAshTable(
      typename: 'PersonType',
      listRoot: 'personTypes',
      rows: const [son, grandson, father, hidden],
    );

    expect(
      FakeAshBackend.settledListing(
        [table],
        (db) => db.metadata.personTypes.streamAll(),
      ),
      [father, son, grandson],
    );
  });

  test('study years are listed by order', () {
    final second = StudyYear(order: 2, name: 'ثانية ابتدائي');
    final tenth = StudyYear(order: 10, name: 'أولى ثانوي');
    final table = FakeAshTable(
      typename: 'StudyYear',
      listRoot: 'studyYears',
      rows: [tenth, second],
    );

    expect(
      FakeAshBackend.settledListing(
        [table],
        (db) => db.metadata.studyYears.streamAll(),
      ),
      [second, tenth],
    );
  });

  test('family roles are the family-admin person types by order', () async {
    const mother = PersonType(
      id: 'type-2',
      name: 'أم',
      order: 2,
      isFamilyAdmin: true,
    );
    const father = PersonType(
      id: 'type-3',
      name: 'أب',
      order: 1,
      isFamilyAdmin: true,
    );
    const son = PersonType(id: 'type-1', name: 'ابن', isHidden: false);
    final backend = FakeAshBackend([
      FakeAshTable(
        typename: 'PersonType',
        listRoot: 'personTypes',
        rows: const [son, mother, father],
      ),
    ]);
    addTearDown(backend.dispose);

    expect(await backend.db.metadata.personTypes.fetchFamilyRoles(), [
      father,
      mother,
    ]);
  });

  test('a study year is found by its order', () async {
    final third = StudyYear(order: 3, name: 'ثالثة ابتدائي');
    final backend = FakeAshBackend([
      FakeAshTable(
        typename: 'StudyYear',
        listRoot: 'studyYears',
        rows: [
          StudyYear(order: 1, name: 'أولى ابتدائي'),
          third,
        ],
      ),
    ]);
    addTearDown(backend.dispose);

    expect(
      await backend.db.metadata.studyYears.getStudyYearName(third.order),
      third,
    );
  });
}
