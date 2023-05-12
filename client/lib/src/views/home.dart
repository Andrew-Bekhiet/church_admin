import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      ViewPerson.route,
      EditPerson.route,
      EditArea.route,
      ViewService.route,
      ViewArea.route,
      ViewUser.route,
      ViewGroup.route,
      ViewClass.route,
      ViewFamily.route,
      ViewStreet.route,
      ViewStore.route,
      ManageUsersScreen.route,
    ],
    redirect: (context, state) {
      return redirect(state);
    },
  );

  @visibleForTesting
  static String? redirect(GoRouterState state) {
    if (!AuthService.I.isSignedIn) {
      return '/login';
    } else if (AuthService.I.currentUser?.person == null) {
      return '/registerUserData';
    } else if (!AuthService.I.currentUser!.person!.spiritDataUpToDate()) {
      return '/updateUserData?forced=true';
    } else if (LocalAuthService.I.shouldAuthenticate) {
      return Uri(
        path: '/authenticate',
        queryParameters: {'next': state.location},
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

  late final TabController _tabController = TabController(
    length: 3,
    initialIndex: 1,
    vsync: this,
  );

  late final _personsController = _createControllerUsing<Person>(
    ({searchQuery}) => DatabaseService.I.persons.streamAll(
      searchQuery: searchQuery,
      secondLineFieldName: UserSettingsService.I.getSecondLineFor(Person),
    ),
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

    _tabController.addListener(_tabControllerListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Builder(
        builder: (context) {
          return Drawer(
            child: Column(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage('assets/Logo.png')),
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
                        case 1:
                          context.push('/manage_users');
                        case 2:
                          break;
                      }
                    },
                    children: const [
                      NavigationDrawerDestination(
                        icon: Icon(Icons.home),
                        label: Text('الرئيسية'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.manage_accounts),
                        label: Text('إدارة المستخدمين'),
                      ),
                      NavigationDrawerDestination(
                        icon: Icon(Icons.settings),
                        label: Text('الإعدادات'),
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
        },
      ),
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
      floatingActionButton: AnimatedBuilder(
        animation: _tabController.animation!,
        builder: (context, child) {
          return _HomeFloatingActionButton(
            offset: _tabController.offset,
            currentIdex: _tabController.index,
          );
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

  Stream<String?> _getSearchStreamFor<T>() {
    return Rx.combineLatest2<String?, Type, String?>(
      _search,
      _bottomNavBar,
      (s, t) => t == T ? s : null,
    ).debounceTime(const Duration(seconds: 1)).shareValue();
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
    final searchStream = _getSearchStreamFor<T>();
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

    await Future.wait(_controllersToDispose.map((e) => e.dispose()));
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

class _HomeFloatingActionButton extends StatelessWidget {
  static const _addPerson = Icon(Icons.person_add_alt_1);
  static const _add = Icon(Icons.add);
  static const _addLocation = Icon(Icons.add_location);

  const _HomeFloatingActionButton({
    required this.offset,
    required this.currentIdex,
  });

  final double offset;
  final int currentIdex;

  @override
  Widget build(BuildContext context) {
    final newIndex = getNewIndex();

    return AnimatedFloatingActionButton(
      offset: offset,
      newFAB: FloatingActionButton(
        onPressed: _addItem(context),
        child: newIndex == 0
            ? _addPerson
            : newIndex == 1
                ? _add
                : _addLocation,
      ),
      oldFAB: FloatingActionButton(
        heroTag: null,
        onPressed: _addItem(context),
        child: currentIdex == 0
            ? _addPerson
            : currentIdex == 1
                ? _add
                : _addLocation,
      ),
    );
  }

  int getNewIndex() {
    return offset.isNegative
        ? (currentIdex + offset).floor()
        : (currentIdex + offset).ceil();
  }

  void Function() _addItem(BuildContext context) => () {
        final newIndex = getNewIndex();
        if (newIndex == 0) {
          context.push('/editPerson');
        } else if (newIndex == 2) {
          context.push('/editArea');
        }
      };
}
