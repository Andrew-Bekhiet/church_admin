import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const translator = AshSortTranslator();

  List<Json> sortBy(
    FieldMetadata field, [
    OrderByValue value = OrderByValue.asc,
  ]) => translator.toSortInput([OrderBy(field: field, value: value)]);

  test('no ordering means no sort input', () {
    expect(translator.toSortInput(const []), isEmpty);
  });

  test('an ascending order puts nulls last', () {
    expect(sortBy(PersonFields().birthdate), [
      {'field': 'BIRTHDATE', 'order': 'ASC_NULLS_LAST'},
    ]);
  });

  test('a descending order puts nulls last', () {
    expect(sortBy(PersonFields().birthdate, OrderByValue.desc), [
      {'field': 'BIRTHDATE', 'order': 'DESC_NULLS_LAST'},
    ]);
  });

  test('a camelCase field becomes a SCREAMING_SNAKE sort field', () {
    expect(sortBy(PersonFields().isShammas), [
      {'field': 'IS_SHAMMAS', 'order': 'ASC_NULLS_LAST'},
    ]);
  });

  test('an id field sorts by the id itself', () {
    expect(sortBy(PersonFields().id).single['field'], 'ID');
  });

  test('a referenced object sorts by its order when it has one', () {
    expect(
      sortBy(PersonFields().studyYear).single['field'],
      'STUDY_YEAR_ORDER',
    );
  });

  test('a referenced object sorts by its name otherwise', () {
    expect(sortBy(PersonFields().church).single['field'], 'CHURCH_NAME');
  });

  test('a redirecting field joins its relationship path', () {
    expect(sortBy(PersonFields().area).single['field'], 'ADDRESS_AREA_NAME');
  });

  test('a redirecting chain ending in a plain field keeps the whole path', () {
    final streetOfPerson = PersonFields().address
        .redirectTo<Object>(AddressFields().street)
        .redirectTo<Object>(StreetFields().name);

    expect(sortBy(streetOfPerson).single['field'], 'ADDRESS_STREET_NAME');
  });

  test('a redirect to a plain scalar sorts by that scalar', () {
    final classService = ClassFields().service.redirectTo(ServiceFields().id);

    expect(sortBy(classService).single['field'], 'SERVICE_ID');
  });

  test('the phone field sorts by the main phone', () {
    expect(sortBy(PersonFields().mainPhone).single['field'], 'MAIN_PHONE');
  });

  test('several orders keep their sequence and directions', () {
    final sort = translator.toSortInput([
      OrderBy(field: PersonFields().studyYear),
      OrderBy(field: PersonFields().name, value: OrderByValue.desc),
    ]);

    expect(sort, [
      {'field': 'STUDY_YEAR_ORDER', 'order': 'ASC_NULLS_LAST'},
      {'field': 'NAME', 'order': 'DESC_NULLS_LAST'},
    ]);
  });
}
