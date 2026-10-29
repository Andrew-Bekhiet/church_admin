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
