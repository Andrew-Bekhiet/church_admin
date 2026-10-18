import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.mode != current.mode ||
          previous.canManageUsers != current.canManageUsers ||
          previous.account != current.account,
      builder: (context, state) {
        final destinations =
            <({NavigationDrawerDestination destination, VoidCallback onTap})>[
              (
                destination: NavigationDrawerDestination(
                  icon: Icon(state.mode.other.icon),
                  label: Text('تبديل إلى ${state.mode.other.label}'),
                ),
                onTap: () => unawaited(homeCubit.switchMode()),
              ),
              if (state.canManageUsers)
                (
                  destination: const NavigationDrawerDestination(
                    icon: Icon(Symbols.manage_accounts),
                    label: Text(
                      'إدارة الخدام',
                      key: HomeDrawerKeys.manageUsers,
                    ),
                  ),
                  onTap: () => const ManageUsersRoute().push(context),
                ),
              (
                destination: const NavigationDrawerDestination(
                  icon: Icon(Symbols.search),
                  label: Text('البحث المتقدم'),
                ),
                onTap: () => const AdvancedSearchRoute().push(context),
              ),
              (
                destination: const NavigationDrawerDestination(
                  icon: Icon(Symbols.upload_file),
                  label: Text('تصدير البيانات'),
                ),
                onTap: () => const ExportEntitiesSelectionRoute().push(context),
              ),
              (
                destination: const NavigationDrawerDestination(
                  icon: Icon(Symbols.map),
                  label: Text('خريطة الافتقاد'),
                ),
                onTap: () => const VisitsMapRoute().push(context),
              ),
              (
                destination: const NavigationDrawerDestination(
                  icon: Icon(Symbols.settings),
                  label: Text('الإعدادات'),
                ),
                onTap: () => const SettingsRoute().push(context),
              ),
              if (kDebugMode)
                (
                  destination: const NavigationDrawerDestination(
                    icon: Icon(Symbols.developer_mode),
                    label: Text('gql cache'),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        final gqlClient = globalProviderContainer.read(
                          graphQLClientProvider,
                        );

                        return GraphqlCacheInspector(
                          title: 'GraphQL Cache',
                          data: (gqlClient.cache.store as HiveStore).box
                              .toMap(),
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
                if (state.account case final account?)
                  ListTile(
                    leading: ImageObjectWidget(account),
                    title: const SessionReplayUnmask(child: Text('حسابي')),
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                      unawaited(const MyAccountRoute().push(context));
                    },
                  ),
                Expanded(
                  child: SessionReplayUnmask(
                    child: NavigationDrawer(
                      onDestinationSelected: (i) {
                        Scaffold.of(context).openEndDrawer();

                        destinations[i].onTap();
                      },
                      children: destinations
                          .map((entry) => entry.destination)
                          .toList(),
                    ),
                  ),
                ),
                SessionReplayUnmask(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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

                          unawaited(homeCubit.signOut());
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
