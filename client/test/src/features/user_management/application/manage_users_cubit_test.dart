import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockUsersDAO extends Mock implements UsersDAO {}

void main() {
  group('ManageUsersCubit', () {
    const pageSize = 2;

    const area = Area(id: 'a1', name: 'منطقة الزيتون');
    const service = Service(id: 's1', name: 'خدمة ابتدائي');

    User user(
      String name, {
      List<ViewableWithID> adminOn = const [],
    }) => User(
      uid: name,
      name: name,
      permissions: const PermissionsSet.empty(),
      currentUserCanManageThisUser: true,
      adminOn: [
        for (final scope in adminOn)
          AdminOnData(
            permissionId: '${name}_${scope.id}',
            area: scope is Area ? scope : null,
            service: scope is Service ? scope : null,
          ),
      ],
    );

    late _MockUsersDAO dao;

    void stubUsers(List<User> users, {int pageSize = pageSize}) {
      when(
        () => dao.streamAll(
          searchQuery: any(named: 'searchQuery'),
          where: any(named: 'where'),
        ),
      ).thenAnswer((invocation) {
        final searchQuery =
            invocation.namedArguments[#searchQuery] as Stream<String?>? ??
            Stream.value(null);

        return PaginatableStream<User, String?>(
          parametersStream: searchQuery,
          pageSize: pageSize,
          factory: (request) {
            final matching = users
                .sortedBy((u) => u.name)
                .where(
                  (u) =>
                      request.param == null || u.name.contains(request.param!),
                )
                .where(
                  (u) =>
                      request.cursor == null ||
                      u.name.compareTo(request.cursor!.name) > 0,
                )
                .take(pageSize + 1)
                .toList();

            return Stream.value(
              PaginatableStreamResponse(
                data: matching.take(pageSize).toList(),
                cursor: matching.elementAtOrNull(pageSize),
              ),
            );
          },
        );
      });
    }

    setUp(() {
      dao = _MockUsersDAO();
    });

    List<String> groupsOf(ManageUsersState state) => [
      for (final group in state.groups)
        '${group.title}: ${group.users.map((u) => u.name).join(', ')}',
    ];

    blocTest<ManageUsersCubit, ManageUsersState>(
      'users open grouped under the areas and services they administer',
      setUp: () => stubUsers([
        user('مينا', adminOn: [area, service]),
        user('مريم', adminOn: [service]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.view, ManageUsersView.grouped);
        expect(groupsOf(cubit.state), [
          'منطقة الزيتون: مينا',
          'خدمة ابتدائي: مريم, مينا',
        ]);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'grouped view shows every user even when they span several pages',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
        user('مريم', adminOn: [service]),
        user('يوسف'),
        user('بيتر', adminOn: [area]),
        user('ماري'),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.isLoading, isFalse);
        expect(groupsOf(cubit.state), [
          'منطقة الزيتون: بيتر',
          'خدمة ابتدائي: مريم, مينا',
          'بدون مسؤولية: ماري, يوسف',
        ]);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'searching a name switches to a flat list of the matching users only',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
        user('مريم', adminOn: [service]),
        user('مارك'),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) => cubit.search('مار'),
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.view, ManageUsersView.flat);
        expect(cubit.state.users.map((u) => u.name), ['مارك']);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'clearing the search returns to the grouped view it started from',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) => cubit
        ..search('مي')
        ..search(''),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.view, ManageUsersView.grouped),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'clearing the search stays flat when the user had chosen the flat view',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) => cubit
        ..showFlat()
        ..search('مي')
        ..search(''),
      wait: Duration.zero,
      verify: (cubit) => expect(cubit.state.view, ManageUsersView.flat),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'loading more in the flat view appends the next page of users',
      setUp: () => stubUsers([
        user('مينا'),
        user('مريم'),
        user('يوسف'),
        user('بيتر'),
        user('ماري'),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) async {
        cubit.showFlat();
        await Future<void>.delayed(Duration.zero);
        await cubit.loadMore();
      },
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.users.map((u) => u.name), [
          'بيتر',
          'ماري',
          'مريم',
          'مينا',
        ]);
        expect(cubit.state.hasMore, isTrue);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'switching back to the grouped view completes the groups',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
        user('مريم', adminOn: [service]),
        user('يوسف', adminOn: [service]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) async {
        cubit.showFlat();
        await Future<void>.delayed(Duration.zero);
        cubit.showGrouped();
      },
      wait: Duration.zero,
      verify: (cubit) =>
          expect(groupsOf(cubit.state), ['خدمة ابتدائي: مريم, مينا, يوسف']),
    );
  });
}
