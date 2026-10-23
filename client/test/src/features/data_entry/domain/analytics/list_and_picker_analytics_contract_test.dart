import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final fields = PersonFields();
  final personType = AdvancedQueriesMetadata().person;

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: ListArrangementSave(
        personType,
        ListArrangement(
          orderBy: [
            OrderBy(field: fields.name, value: OrderByValue.desc),
            OrderBy(field: fields.birthdate),
          ],
          secondLineField: fields.birthdate,
        ),
      ),
      name: 'list:arrangement_save',
      properties: {
        'queryable_type': 'Person',
        'sort_field_count': 2,
        'sort_field': 'name',
        'sort_direction': 'desc',
        'has_second_line': true,
      },
    ),
    (
      event: ListArrangementSave(
        personType,
        const ListArrangement(orderBy: []),
      ),
      name: 'list:arrangement_save',
      properties: {
        'queryable_type': 'Person',
        'sort_field_count': 0,
        'has_second_line': false,
      },
    ),
    (
      event: ListMultiSelectOpen(const Family(id: 'family-1', name: 'عائلة')),
      name: 'list:multi_select_open',
      properties: {'entity_type': 'family'},
    ),
    (
      event: ListMultiSelectOpen('not an entity'),
      name: 'list:multi_select_open',
      properties: {},
    ),
    for (final (type, sent) in [
      (PickerObjectType.college, 'college'),
      (PickerObjectType.school, 'school'),
      (PickerObjectType.qualification, 'qualification'),
      (PickerObjectType.job, 'job'),
      (PickerObjectType.church, 'church'),
      (PickerObjectType.father, 'father'),
      (PickerObjectType.hobby, 'hobby'),
      (PickerObjectType.tag, 'tag'),
      (PickerObjectType.personType, 'personType'),
    ])
      (
        event: PickerCustomItemCreate(type),
        name: 'picker:custom_item_create',
        properties: {'picker_object_type': sent},
      ),
    for (final (kind, sent) in [
      (PickerFieldKind.date, 'date'),
      (PickerFieldKind.dateRange, 'dateRange'),
      (PickerFieldKind.studyYearRange, 'studyYearRange'),
      (PickerFieldKind.color, 'color'),
      (PickerFieldKind.singleObject, 'singleObject'),
      (PickerFieldKind.multiObject, 'multiObject'),
    ])
      (
        event: PickerValueClear(kind),
        name: 'picker:value_clear',
        properties: {'field_kind': sent},
      ),
    (
      event: const PhotoPickAttempt(
        ImageSource.camera,
        PhotoPickOutcome.picked,
      ),
      name: 'photo:pick_attempt',
      properties: {'image_source': 'camera', 'outcome': 'picked'},
    ),
    (
      event: const PhotoPickAttempt(
        ImageSource.gallery,
        PhotoPickOutcome.cropCancelled,
      ),
      name: 'photo:pick_attempt',
      properties: {'image_source': 'gallery', 'outcome': 'cropCancelled'},
    ),
    (
      event: const PhotoDeleteChoose(),
      name: 'photo:delete_choose',
      properties: {},
    ),
    (
      event: PhotoFullscreenOpen(const Area(id: 'area-1', name: 'شبرا')),
      name: 'photo:fullscreen_open',
      properties: {'entity_type': 'area', 'area_id': 'area-1'},
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends ${properties.isEmpty ? 'nothing' : properties}', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
