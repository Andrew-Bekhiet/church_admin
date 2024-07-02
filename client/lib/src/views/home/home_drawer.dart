import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeDrawer extends StatelessWidget {
  final void Function(BuildContext, bool) onModeChanged;
  final bool isSundaySchool;

  const HomeDrawer({
    required this.onModeChanged,
    required this.isSundaySchool,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Logo.png')),
            ),
            child: SizedBox.expand(),
          ),
          Expanded(
            child: NavigationDrawer(
              onDestinationSelected: (i) {
                Scaffold.of(context).openEndDrawer();

                switch (i) {
                  case 0:
                    onModeChanged(context, !isSundaySchool);
                  case 1 when AuthService.I.currentUser!.canManageSomeUsers:
                    context.push('/manage_users');
                  case 1:
                  case 2 when AuthService.I.currentUser!.canManageSomeUsers:
                    context.push('/advanced_search');
                  case 2:
                  case 3 when AuthService.I.currentUser!.canManageSomeUsers:
                    context.push('/settings');
                  case 3 when kDebugMode:
                  case 4
                      when kDebugMode &&
                          AuthService.I.currentUser!.canManageSomeUsers:
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          final gqlClient = graphQLClientProvider
                              .read(globalProviderContainer);
                          return GraphqlCacheInspector(
                            title: 'GraphQL Cache',
                            data: (gqlClient.cache.store as HiveStore)
                                .box
                                .toMap(),
                            getCacheData:
                                (gqlClient.cache.store as HiveStore).box.toMap,
                          );
                        },
                      ),
                    );
                }
              },
              children: [
                NavigationDrawerDestination(
                  icon: const Icon(Symbols.home),
                  label: isSundaySchool
                      ? const Text('تبديل إلى الافتقاد')
                      : const Text('تبديل إلى مدارس الأحد'),
                ),
                if (AuthService.I.currentUser!.canManageSomeUsers)
                  const NavigationDrawerDestination(
                    icon: Icon(Symbols.manage_accounts),
                    label: Text('إدارة الخدام'),
                  ),
                const NavigationDrawerDestination(
                  icon: Icon(Symbols.search),
                  label: Text('البحث المتقدم'),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Symbols.settings),
                  label: Text('الإعدادات'),
                ),
                if (kDebugMode)
                  const NavigationDrawerDestination(
                    icon: Icon(Symbols.developer_mode),
                    label: Text('gql cache'),
                  ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Symbols.info),
            title: const Text('حول'),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
              AboutAppService.I.showAboutDialog(context);
            },
          ),
          ListTile(
            leading: const Icon(Symbols.logout),
            title: const Text('تسجيل الخروج'),
            onTap: () async {
              Scaffold.of(context).openEndDrawer();

              LocalAuthService.I.scheduleReauth();
              await AuthService.I.signOut();
            },
          ),
        ],
      ),
    );
  }
}
