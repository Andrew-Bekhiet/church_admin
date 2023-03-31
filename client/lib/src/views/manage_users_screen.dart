import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class ManageUsersScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: 'manage_users',
    builder: (context, state) => const ManageUsersScreen(),
    routes: [
      ViewUser.route,
    ],
    redirect: (context, state) {
      if (!LocalAuthService.I.requestOneTimeAuthForPath('/manage_users')) {
        return Uri(
          path: '/authenticate',
          queryParameters: {'next': '/manage_users'},
        ).toString();
      }

      return null;
    },
  );

  const ManageUsersScreen({super.key});

  @override
  State<ManageUsersScreen> createState() => _ManageUsersScreenState();
}

class _ManageUsersScreenState extends State<ManageUsersScreen> {
  final _search = BehaviorSubject<String?>.seeded(null);

  late final _usersController = ViewableObjectListController(
    objectsPaginatableStream:
        DatabaseService.I.users.paginateUsers(searchQuery: _search.stream),
    filterStream: _search.stream,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<String?>(
          stream: _search,
          builder: (context, searchData) {
            if (searchData.hasData) {
              return SearchField(
                searchSink: _search,
                canHide: true,
              );
            }

            return Row(
              children: [
                const Expanded(child: Text('إدارة المستخدمين')),
                IconButton(
                  onPressed: () => _search.add(''),
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          },
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
                            message: p.humanReadableName,
                            child: Icon(p.icon, size: 20),
                          )
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
    _search.close();
    _usersController.dispose();

    super.dispose();
  }
}
