import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersScreen extends StatefulWidget {
  const ManageUsersScreen({super.key});

  @override
  State<ManageUsersScreen> createState() => _ManageUsersScreenState();
}

class _ManageUsersScreenState extends State<ManageUsersScreen> {
  final _search = BehaviorSubject<String?>.seeded(null);

  late final _usersController = ViewableObjectListController(
    objectsPaginatableStream: DatabaseService.I.users.streamAll(
      searchQuery: _search.stream,
      where: Stream.value([
        Filter(
          UserFields().currentUserCanManageThisUser,
          PrimitiveOperator.eq,
          true,
        ),
      ]),
    ),
    filterStream: _search.stream,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleSearchField(
          searchStream: _search,
          title: const Text('إدارة الخدام'),
        ),
      ),
      body: ViewableObjectList(
        objectsController: _usersController,
        itemBuilder: (context, user, config) {
          final permissions = user.permissions.permissions;

          return ViewableObjectWidget(
            user,
            subtitle: user.permissions.approved && permissions.length == 1
                ? null
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final p in permissions)
                        if (p != UserPermission.approved)
                          Tooltip(
                            message: p.label,
                            child: Icon(p.icon, size: 20),
                          ),
                    ],
                  ),
            config: config,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    unawaited(_search.close());
    unawaited(_usersController.dispose());

    super.dispose();
  }
}
