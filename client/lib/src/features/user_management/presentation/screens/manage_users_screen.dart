import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersScreen extends StatefulWidget {
  const ManageUsersScreen({super.key});

  @override
  State<ManageUsersScreen> createState() => _ManageUsersScreenState();
}

class _ManageUsersScreenState extends State<ManageUsersScreen> {
  final _search = BehaviorSubject<String?>.seeded(null);
  late final _cubit = ManageUsersCubit();
  late final StreamSubscription<String?> _searchSubscription;

  @override
  void initState() {
    super.initState();

    _searchSubscription = _search.listen(
      (query) => _cubit.search(query ?? ''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          title: TitleSearchField(
            searchStream: _search,
            title: const Text('إدارة الخدام'),
          ),
          actions: const [ManageUsersViewToggle()],
        ),
        body: BlocBuilder<ManageUsersCubit, ManageUsersState>(
          builder: (context, state) {
            if (state.error case final error?) {
              return Center(child: Text(error.toString()));
            }

            if (state.users.isEmpty) {
              return Center(
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text('لا يوجد بيانات'),
              );
            }

            return switch (state.view) {
              ManageUsersView.grouped => ManageUsersGroupedList(
                groups: state.groups,
                isLoading: state.isLoading,
              ),
              ManageUsersView.flat => ManageUsersFlatList(
                users: state.users,
                isLoading: state.isLoading,
              ),
            };
          },
        ),

        // TODO: implement adding new user data, importing a user
        // and inviting a user with inviation code
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_searchSubscription.cancel());
    unawaited(_search.close());
    unawaited(_cubit.close());

    super.dispose();
  }
}
