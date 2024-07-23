import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class _HomeDrawerDestination {
  final Widget label;
  final Widget icon;
  final VoidCallback onTap;

  const _HomeDrawerDestination({
    required this.label,
    required this.icon,
    required this.onTap,
  });
}

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
    final List<_HomeDrawerDestination> destinations = [
      _HomeDrawerDestination(
        label: Text(
          isSundaySchool ? 'تبديل إلى الافتقاد' : 'تبديل إلى مدارس الأحد',
        ),
        icon: const Icon(Symbols.home),
        onTap: () => onModeChanged(context, !isSundaySchool),
      ),
      if (AuthService.I.currentUser!.canManageSomeUsers)
        _HomeDrawerDestination(
          icon: const Icon(Symbols.manage_accounts),
          label: const Text('إدارة الخدام'),
          onTap: () => context.push('/manage_users'),
        ),
      _HomeDrawerDestination(
        icon: const Icon(Symbols.search),
        label: const Text('البحث المتقدم'),
        onTap: () => context.push('/advanced_search'),
      ),
      _HomeDrawerDestination(
        icon: const Icon(Symbols.settings),
        label: const Text('الإعدادات'),
        onTap: () => context.push('/settings'),
      ),
      if (kDebugMode)
        _HomeDrawerDestination(
          icon: const Icon(Symbols.developer_mode),
          label: const Text('gql cache'),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                final gqlClient =
                    graphQLClientProvider.read(globalProviderContainer);
                return GraphqlCacheInspector(
                  title: 'GraphQL Cache',
                  data: (gqlClient.cache.store as HiveStore).box.toMap(),
                  getCacheData: (gqlClient.cache.store as HiveStore).box.toMap,
                );
              },
            ),
          ),
        ),
    ];

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

                destinations[i].onTap();
              },
              children: destinations
                  .map(
                    (e) => NavigationDrawerDestination(
                      icon: e.icon,
                      label: e.label,
                    ),
                  )
                  .toList(),
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
