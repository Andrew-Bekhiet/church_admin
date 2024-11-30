import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeDrawer extends StatelessWidget {
  final HomeController homeController;

  const HomeDrawer({
    required this.homeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<HomeDrawerDestination> destinations = [
      HomeDrawerDestination(
        label: StreamBuilder<HomeMode>(
          stream: homeController.modeStream,
          builder: (context, modeSnapshot) {
            return Text(
              modeSnapshot.data == HomeMode.sundaySchool
                  ? 'تبديل إلى الافتقاد'
                  : 'تبديل إلى مدارس الأحد',
            );
          },
        ),
        icon: const Icon(Symbols.home),
        onTap: homeController.switchHomeMode,
      ),
      if (AuthService.I.currentUser!.canManageSomeUsers)
        HomeDrawerDestination(
          icon: const Icon(Symbols.manage_accounts),
          label: const Text('إدارة الخدام'),
          onTap: () => const ManageUsersRoute().push(context),
        ),
      HomeDrawerDestination(
        icon: const Icon(Symbols.search),
        label: const Text('البحث المتقدم'),
        onTap: () => const AdvancedSearchRoute().push(context),
      ),
      HomeDrawerDestination(
        icon: const Icon(Symbols.map),
        label: const Text('خريطة الافتقاد'),
        onTap: () => const VisitsMapRoute().push(context),
      ),
      HomeDrawerDestination(
        icon: const Icon(Symbols.settings),
        label: const Text('الإعدادات'),
        onTap: () => const SettingsRoute().push(context),
      ),
      if (kDebugMode)
        HomeDrawerDestination(
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
