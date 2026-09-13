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
    const group = Group(id: 'g1', name: 'مجموعة الشباب');

    User user(
      String name, {
      List<ViewableWithID> adminOn = const [],
      StudyYear? studyYear,
      Set<UserPermission> permissions = const {},
    }) => User(
      uid: name,
      name: name,
      permissions: PermissionsSet.fromSet(permissions),
      adminOn: [
        for (final scope in adminOn)
          AdminOnData(
            permissionId: '${name}_${scope.id}',
            area: scope is Area ? scope : null,
            service: scope is Service ? scope : null,
            serviceStudyYearData: scope is Service ? studyYear : null,
            group: scope is Group ? scope : null,
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

    String describe(UserAdminGroup group, UserAdminSubgroup subgroup) {
      final title = switch (subgroup.title) {
        final subtitle? => '${group.title} / $subtitle',
        null => group.title,
      };

      return '$title: ${subgroup.users.map((u) => u.name).join(', ')}';
    }

    List<String> groupsOf(ManageUsersState state) => [
      for (final group in state.groups)
        for (final subgroup in group.subgroups) describe(group, subgroup),
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
          'خدمة ابتدائي / كل السنوات الدراسية: مريم, مينا',
        ]);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'super admins come first in their own group and still appear '
      'under their scopes',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
        user(
          'مريم',
          adminOn: [service],
          permissions: {UserPermission.writeAllData},
        ),
        user('يوسف', permissions: {UserPermission.manageAllUsers}),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(groupsOf(cubit.state), [
        'مسؤولون عامون: مريم, يوسف',
        'خدمة ابتدائي / كل السنوات الدراسية: مريم, مينا',
      ]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'service admins are split by study year with all-years admins first',
      setUp: () => stubUsers([
        user(
          'مينا',
          adminOn: [service],
          studyYear: StudyYear(order: 2, name: 'ثانية'),
        ),
        user('مريم', adminOn: [service]),
        user(
          'يوسف',
          adminOn: [service],
          studyYear: StudyYear(order: 1, name: 'أولى'),
        ),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(groupsOf(cubit.state), [
        'خدمة ابتدائي / كل السنوات الدراسية: مريم',
        'خدمة ابتدائي / أولى: يوسف',
        'خدمة ابتدائي / ثانية: مينا',
      ]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'all-years admins stay on top even when study years have negative order',
      setUp: () => stubUsers([
        user(
          'مينا',
          adminOn: [service],
          studyYear: StudyYear(order: -3, name: 'حضانة 3'),
        ),
        user('مريم', adminOn: [service]),
        user(
          'يوسف',
          adminOn: [service],
          studyYear: StudyYear(order: -5, name: 'حضانة 1'),
        ),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(groupsOf(cubit.state), [
        'خدمة ابتدائي / كل السنوات الدراسية: مريم',
        'خدمة ابتدائي / حضانة 1: يوسف',
        'خدمة ابتدائي / حضانة 3: مينا',
      ]),
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'users who only administer a group are listed as having no scope',
      setUp: () => stubUsers([
        user('مينا', adminOn: [group]),
        user('مريم', adminOn: [service, group]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      wait: Duration.zero,
      verify: (cubit) => expect(groupsOf(cubit.state), [
        'خدمة ابتدائي / كل السنوات الدراسية: مريم',
        'بدون مسؤولية: مينا',
      ]),
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
          'خدمة ابتدائي / كل السنوات الدراسية: مريم, مينا',
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
      'after a search is cleared the grouped view finishes loading '
      'with every user once',
      setUp: () => stubUsers([
        user('مينا', adminOn: [service]),
        user('مريم', adminOn: [service]),
        user('يوسف', adminOn: [service]),
        user('بيتر', adminOn: [service]),
        user('ماري', adminOn: [service]),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) async {
        cubit.search('مي');
        await Future<void>.delayed(Duration.zero);
        cubit.search('');
      },
      wait: const Duration(milliseconds: 50),
      verify: (cubit) {
        expect(cubit.state.isLoading, isFalse);
        expect(groupsOf(cubit.state), [
          'خدمة ابتدائي / كل السنوات الدراسية: بيتر, ماري, مريم, مينا, يوسف',
        ]);
      },
    );

    blocTest<ManageUsersCubit, ManageUsersState>(
      'the flat view loads every page on its own',
      setUp: () => stubUsers([
        user('مينا'),
        user('مريم'),
        user('يوسف'),
        user('بيتر'),
        user('ماري'),
      ]),
      build: () => ManageUsersCubit(usersDao: dao),
      act: (cubit) => cubit.showFlat(),
      wait: Duration.zero,
      verify: (cubit) {
        expect(cubit.state.isLoading, isFalse);
        expect(cubit.state.users.map((u) => u.name), [
          'بيتر',
          'ماري',
          'مريم',
          'مينا',
          'يوسف',
        ]);
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
      verify: (cubit) => expect(groupsOf(cubit.state), [
        'خدمة ابتدائي / كل السنوات الدراسية: مريم, مينا, يوسف',
      ]),
    );
  });
}
