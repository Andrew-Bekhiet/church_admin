import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeContainerVisibility', () {
    test('does not filter users with global read access', () {
      final visibility = HomeContainerVisibility.fromUser(
        const User(
          uid: 'user-id',
          name: 'User',
          permissions: PermissionsSet.fromSet({
            UserPermission.approved,
            UserPermission.readAllData,
          }),
        ),
      );

      expect(visibility.areaFilters, isEmpty);
      expect(visibility.streetFilters, isEmpty);
      expect(visibility.serviceFilters, isEmpty);
    });

    test('filters areas and streets using area scopes', () {
      const area = Area(id: 'area-id', name: 'Area');
      final visibility = HomeContainerVisibility.fromUser(
        const User(
          uid: 'user-id',
          name: 'User',
          adminOn: [
            AdminOnData(permissionId: 'permission-id', area: area),
          ],
        ),
      );

      expect(
        visibility.areaFilters.map((filter) => filter.queryToJson()),
        [
          {
            'id': {
              '_in': ['area-id'],
            },
          },
        ],
      );
      expect(
        visibility.streetFilters.map((filter) => filter.queryToJson()),
        [
          {
            'areas': {
              'area': {
                'id': {
                  '_in': ['area-id'],
                },
              },
            },
          },
        ],
      );
    });

    test('filters services using service and group scopes', () {
      const service = Service(id: 'service-id', name: 'Service');
      const group = Group(id: 'group-id', name: 'Group');
      final visibility = HomeContainerVisibility.fromUser(
        const User(
          uid: 'user-id',
          name: 'User',
          adminOn: [
            AdminOnData(permissionId: 'service-scope', service: service),
            AdminOnData(permissionId: 'group-scope', group: group),
          ],
        ),
      );

      expect(
        visibility.serviceFilters.map((filter) => filter.queryToJson()),
        [
          {
            '_or': [
              {
                'id': {
                  '_in': ['service-id'],
                },
              },
              {
                'groups': {
                  'id': {
                    '_in': ['group-id'],
                  },
                },
              },
            ],
          },
        ],
      );
    });

    test('matches no containers without global or scoped access', () {
      final visibility = HomeContainerVisibility.fromUser(null);

      expect(
        visibility.areaFilters.single.queryToJson(),
        {
          'id': {'_in': <String>[]},
        },
      );
      expect(
        visibility.streetFilters.single.queryToJson(),
        {
          'id': {'_in': <String>[]},
        },
      );
      expect(
        visibility.serviceFilters.single.queryToJson(),
        {
          'id': {'_in': <String>[]},
        },
      );
    });
  });
}
