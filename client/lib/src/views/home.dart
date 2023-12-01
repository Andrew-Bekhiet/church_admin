import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_cache_inspector/graphql_cache_inspector.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      ViewPerson.route,
      EditPerson.route,
      ViewArea.route,
      EditArea.route,
      ViewService.route,
      EditService.route,
      ViewUser.route,
      ViewGroup.route,
      ViewClass.route,
      ViewFamily.route,
      ViewStreet.route,
      ViewStore.route,
      ManageUsersScreen.route,
      AdvancedSearchScreen.route,
      SettingsScreen.route,
    ],
    redirect: (context, state) {
      return redirect(state);
    },
  );

  @visibleForTesting
  static String? redirect(GoRouterState _) {
    if (!AuthService.I.isSignedIn) {
      return LoginScreen.route.path;
    } else if (!(AuthService.I.currentUser!.emailVerified ?? false)) {
      return EmailVerificationScreen.route.path;
    } else if (!(AuthService.I.currentUser!.isMultiFactorEnrolled ?? false)) {
      return MultiFactorLogin.route.path;
    } else if (!AuthService.I.currentUser!.permissions.approved) {
      return UnapprovedUser.route.path;
    } else if (!AuthService.I.currentUser!.person!.spiritDataUpToDate()) {
      return Uri(
        path: UpdateUserSpiritData.route.path,
        queryParameters: {'forced': 'true'},
      ).toString();
    }
    return null;
  }

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _search = StateSubject<String?>(null);
  final _bottomNavBar = StateSubject<Type>(Service);
  late final StreamSubscription<void> _localAuthListener;

  late final TabController _tabController = TabController(
    length: 3,
    initialIndex: 1,
    vsync: this,
  );

  late final _personsController = _createControllerUsing<Person>(
    DatabaseService.I.persons.streamAll,
  );
  late final _servicesController = _createControllerUsing<Service>(
    DatabaseService.I.services.streamAll,
  );
  late final _areasController = _createControllerUsing<Area>(
    DatabaseService.I.areas.streamAll,
  );

  final Map<Type, int> _typeToIndex = {Person: 0, Service: 1, Area: 2};

  final Set<ViewableObjectListController> _controllersToDispose = {};

  @override
  void initState() {
    super.initState();

    _listenToLocalAuth();

    _tabController.addListener(_tabControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const _HomeDrawer(),
      appBar: AppBar(
        title: TitleSearchField(
          searchStream: _search,
          title: const Text('كنيسة السيدة العذراء مريم'),
        ),
      ),
      body: _HomeBody(
        tabController: _tabController,
        personsController: () => _ensureWillDispose(_personsController),
        servicesController: () => _ensureWillDispose(_servicesController),
        areasController: () => _ensureWillDispose(_areasController),
      ),
      floatingActionButton: SwitchingFloatingActionButton(
        tabController: _tabController,
        icons: const {
          0: Icon(Icons.person_add_alt_1),
          1: Icon(Icons.add),
          2: Icon(Icons.add_location),
        },
        onTap: (i) {
          if (i == 0) {
            context.push('/editPerson');
          } else if (i == 1) {
            context.push('/editService');
          } else if (i == 2) {
            context.push('/editArea');
          }
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: _tabController.animation!,
        builder: (context, child) {
          return NavigationBar(
            onDestinationSelected: (v) {
              _tabController.animateTo(v);
              _bottomNavBar.add(
                _typeToIndex.keys.elementAt(_tabController.index),
              );
            },
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex:
                _tabController.animation?.value.round() ?? _tabController.index,
            destinations: const [
              NavigationDestination(
                label: 'المخدومين',
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outlined),
              ),
              NavigationDestination(
                label: 'الخدمات',
                selectedIcon: Icon(Icons.miscellaneous_services),
                icon: Icon(Icons.miscellaneous_services_outlined),
              ),
              NavigationDestination(
                label: 'المناطق',
                selectedIcon: Icon(Icons.pin_drop),
                icon: Icon(Icons.pin_drop_outlined),
              ),
            ],
          );
        },
      ),
    );
  }

  void _listenToLocalAuth() {
    final entry = OverlayEntry(
      builder: (context) => const AuthenticateScreen(),
      opaque: true,
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => !entry.mounted ? Overlay.of(context).insert(entry) : null,
    );

    _localAuthListener = LocalAuthService.I.refreshUIStream.listen(
      (_) {
        if (LocalAuthService.I.shouldAuthenticate && !entry.mounted) {
          Overlay.of(context).insert(entry);
        } else if (!LocalAuthService.I.shouldAuthenticate) {
          entry.remove();
        }
      },
    );
  }

  Stream<String?> _getSearchStreamFor<T>() {
    return Rx.combineLatest2<String?, Type, String?>(
      _search,
      _bottomNavBar,
      (s, t) => t == T ? s : null,
    ).debounceTime(const Duration(seconds: 1));
  }

  void _tabControllerListener() {
    if (_typeToIndex.keys.elementAt(_tabController.index) !=
        _bottomNavBar.value) {
      _bottomNavBar.add(_typeToIndex.keys.elementAt(_tabController.index));
    }
  }

  ViewableObjectListController<T> _createControllerUsing<T extends Viewable>(
    GQLPaginatableStream<T> Function({Stream<String?>? searchQuery})
        paginatableStreamFactory,
  ) {
    final searchStream = _getSearchStreamFor<T>().asBroadcastStream();
    final paginatableStream =
        paginatableStreamFactory(searchQuery: searchStream);
    final filterStream = paginatableStream.onLoadingChanged.switchMap(
      (isLoading) => isLoading ? searchStream : Stream.value(null),
    );
    return ViewableObjectListController<T>(
      filterStream: filterStream,
      objectsPaginatableStream: paginatableStream,
    );
  }

  ViewableObjectListController<T>
      _ensureWillDispose<T extends ViewableWithIDAndImage>(
    ViewableObjectListController<T> controller,
  ) {
    _controllersToDispose.add(controller);
    return controller;
  }

  @override
  Future<void> dispose() async {
    _tabController.dispose();

    super.dispose();

    await _search.close();
    await _bottomNavBar.close();

    await _localAuthListener.cancel();

    await Future.wait(_controllersToDispose.map((e) => e.dispose()));
  }
}

class _HomeDrawer extends StatelessWidget {
  const _HomeDrawer();

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
                    break;
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
                const NavigationDrawerDestination(
                  icon: Icon(Icons.home),
                  label: Text('الرئيسية'),
                ),
                if (AuthService.I.currentUser!.canManageSomeUsers)
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.manage_accounts),
                    label: Text('إدارة الخدام'),
                  ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.search),
                  label: Text('البحث المتقدم'),
                ),
                const NavigationDrawerDestination(
                  icon: Icon(Icons.settings),
                  label: Text('الإعدادات'),
                ),
                if (kDebugMode)
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.developer_mode),
                    label: Text('gql cache'),
                  ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('حول'),
            onTap: () {
              Scaffold.of(context).openEndDrawer();
              AboutAppService.I.showAboutDialog(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
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

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    required this.tabController,
    required this.areasController,
    required this.personsController,
    required this.servicesController,
  });

  final TabController tabController;

  final ViewableObjectListController<Person> Function() personsController;
  final ViewableObjectListController<Service> Function() servicesController;
  final ViewableObjectListController<Area> Function() areasController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TabBarView(
        controller: tabController,
        children: [
          LazyTabPage(
            index: 0,
            tabController: tabController,
            builder: (context) => ViewableObjectList<Person>(
              key: PageStorageKey(
                personsController,
              ),
              objectsController: personsController(),
            ),
          ),
          LazyTabPage(
            index: 1,
            tabController: tabController,
            builder: (context) => ServicesHierarchyList(
              key: PageStorageKey(
                servicesController,
              ),
              listController: servicesController(),
              serviceTrailingBuilder: (
                context,
                s, {
                onLongPress,
                onTap,
                subtitle,
                trailing,
              }) =>
                  IconButton(
                onPressed: onTap != null ? () => onTap(s) : null,
                icon: const Icon(Icons.info),
              ),
            ),
          ),
          LazyTabPage(
            index: 2,
            tabController: tabController,
            builder: (context) => ViewableObjectList<Area>(
              viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
                circleCrop: false,
                forceShowSecondLine: false,
              ),
              key: PageStorageKey(areasController),
              objectsController: areasController(),
            ),
          ),
        ],
      ),
    );
  }
}
