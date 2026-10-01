import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class HomeDrawer extends StatelessWidget {
  final HomeBloc homeBloc;

  const HomeDrawer({required this.homeBloc, super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = AuthBloc.I;

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: authBloc,
      builder: (context, state) {
        final destinations = [
          HomeDrawerDestination(
            label: BlocSelector<HomeBloc, HomeState, HomeMode>(
              bloc: homeBloc,
              selector: (state) => state.mode,
              builder: (context, modeSnapshot) {
                return Text(
                  modeSnapshot == HomeMode.sundaySchool
                      ? 'تبديل إلى الافتقاد'
                      : 'تبديل إلى مدارس الأحد',
                );
              },
            ),
            icon: const Icon(Symbols.home),
            onTap: () => homeBloc.add(const HomeSwitchMode()),
          ),
          if (state case AuthAuthenticated(
            userData: User(
              canManageSomeUsers: true,
            ),
          ))
            HomeDrawerDestination(
              icon: const Icon(Symbols.manage_accounts),
              label: const Text(
                'إدارة الخدام',
                key: HomeDrawerKeys.manageUsers,
              ),
              onTap: () => const ManageUsersRoute().push(context),
            ),
          HomeDrawerDestination(
            icon: const Icon(Symbols.search),
            label: const Text('البحث المتقدم'),
            onTap: () => const AdvancedSearchRoute().push(context),
          ),
          HomeDrawerDestination(
            icon: const Icon(Symbols.upload_file),
            label: const Text('تصدير البيانات'),
            onTap: () => const ExportEntitiesSelectionRoute().push(context),
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
                    final gqlClient = globalProviderContainer.read(
                      graphQLClientProvider,
                    );

                    return GraphqlCacheInspector(
                      title: 'GraphQL Cache',
                      data: (gqlClient.cache.store as HiveStore).box.toMap(),
                      getCacheData:
                          (gqlClient.cache.store as HiveStore).box.toMap,
                    );
                  },
                ),
              ),
            ),
        ];

        return Drawer(
          child: SafeArea(
            child: Column(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                  child: SizedBox.expand(),
                ),
                if (state case AuthAuthenticated(:final userData?))
                  ListTile(
                    leading: ImageObjectWidget(userData),
                    title: const PostHogUnmaskWidget(child: Text('حسابي')),
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      unawaited(const MyAccountRoute().push(context));
                    },
                  ),
                Expanded(
                  child: PostHogUnmaskWidget(
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
                ),
                PostHogUnmaskWidget(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Symbols.info),
                        title: const Text('حول'),
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                          unawaited(AboutAppService.I.showAboutDialog(context));
                        },
                      ),
                      ListTile(
                        key: HomeDrawerKeys.signOut,
                        leading: const Icon(Symbols.logout),
                        title: const Text('تسجيل الخروج'),
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();

                          LocalAuthService.I.scheduleReauth();
                          authBloc.add(const SignOut());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

abstract final class HomeDrawerKeys {
  static const Key manageUsers = ValueKey('Home Drawer Manage Users Key');
  static const Key signOut = ValueKey('Home Drawer Sign Out Key');
}
