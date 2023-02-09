import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    hide PhotoObjectWidget, StudyYear, ViewableObjectWidget;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart_ext/rxdart_ext.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      ViewPerson.route,
      EditPerson.newPersonRoute,
      GoRoute(
        name: 'view_service',
        path: 'viewService',
        builder: (context, state) => SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Text(state.location),
                Text(state.extra.toString()),
              ],
            ),
          ),
        ),
      ),
      ViewArea.route,
      // EditArea.newAreaRoute,
      GoRoute(
        name: 'view_group',
        path: 'viewGroup',
        builder: (context, state) => SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Text(state.location),
                Text(state.extra.toString()),
              ],
            ),
          ),
        ),
      ),
      GoRoute(
        name: 'view_class',
        path: 'viewClass',
        builder: (context, state) => SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Text(state.location),
                Text(state.extra.toString()),
              ],
            ),
          ),
        ),
      ),
    ],
    redirect: (context, state) {
      return redirect(
        ChurchAdminApp
            .router.routeInformationParser.configuration.namedLocation,
        state,
      );
    },
  );

  @visibleForTesting
  static String? redirect(NamedLocation namedLocation, GoRouterState state) {
    if (!AuthService.instance.isSignedIn) {
      return namedLocation('login');
    } else if (AuthService.instance.currentUser?.person == null) {
      return namedLocation('register_user_data');
    } else if (!AuthService.instance.currentUser!.person!
        .spiritDataUpToDate()) {
      return namedLocation(
        'update_user_data',
        queryParams: {'forced': 'true'},
      );
    } else if (LocalAuthService.I.shouldAuthenticate) {
      return namedLocation(
        'authenticate',
        queryParams: {'next': state.location},
      );
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

  late final List<ViewableObjectListController<Viewable>> _listsControllers;

  late final TabController _tabController = TabController(
    length: 3,
    initialIndex: 1,
    vsync: this,
  );

  late final _fabAnimationController = AnimationController(
    value: 0,
    lowerBound: -1,
    duration: _tabController.animationDuration,
    vsync: this,
  );

  final Map<Type, int> _typeToIndex = {Person: 0, Service: 1, Area: 2};

  @override
  void initState() {
    super.initState();

    _tabController.addListener(_tabControllerListener);
    _tabController.animation!.addListener(_tabControllerAnimationListener);

    _initListsControllers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: const [
            DrawerHeader(child: Text('Drawer Header')),
            Expanded(
              child: NavigationDrawer(
                children: [
                  NavigationDrawerDestination(
                    icon: Icon(Icons.home),
                    label: Text('الرئيسية'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: StreamBuilder<String?>(
          stream: _search,
          builder: (context, searchData) {
            if (searchData.hasData) {
              //TODO: data filters
              return SearchField(
                searchSink: _search,
                canHide: true,
              );
            }

            return Row(
              children: [
                const Expanded(child: Text('كنيسة السيدة العذراء مريم')),
                IconButton(
                  onPressed: () => _search.add(''),
                  icon: const Icon(Icons.search),
                ),
              ],
            );
          },
        ),
      ),
      body: _HomeBody(
        tabController: _tabController,
        listsControllers: _listsControllers,
        typeToIndex: _typeToIndex,
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _fabAnimationController,
        builder: (context, child) {
          return _HomeFloatingActionButton(
            offset: _fabAnimationController.value,
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

  void _tabControllerAnimationListener() {
    _fabAnimationController.value = _tabController.offset;
  }

  void _initListsControllers() {
    _listsControllers = [
      _createControllerUsing<Person>(
        ({searchQuery}) => DatabaseService.I.persons.paginatePersons(
          searchQuery: searchQuery,
          secondLineFieldName:
              GetIt.I<UserSettingsService>().getSecondLineFor(Person),
        ),
      ),
      _createControllerUsing<Service>(
        DatabaseService.I.services.paginateServices,
      ),
      _createControllerUsing<Area>(
        DatabaseService.I.areas.paginateAreas,
      ),
    ];
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

  @override
  Future<void> dispose() async {
    super.dispose();

    _tabController.dispose();
    _fabAnimationController.dispose();
    await _search.close();
    await _bottomNavBar.close();

    await Future.wait(_listsControllers.map((c) => c.dispose()));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    required TabController tabController,
    required List<ViewableObjectListController<Viewable>> listsControllers,
    required Map<Type, int> typeToIndex,
  })  : _tabController = tabController,
        _listsControllers = listsControllers,
        _typeToIndex = typeToIndex;

  final TabController _tabController;
  final List<ViewableObjectListController<Viewable>> _listsControllers;
  final Map<Type, int> _typeToIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: TabBarView(
        controller: _tabController,
        children: [
          ViewableObjectList<Person>(
            key: PageStorageKey(_listsControllers[_typeToIndex[Person]!]),
            objectsController: _listsControllers[_typeToIndex[Person]!]
                as ViewableObjectListController<Person>,
          ),
          ServicesHierarchyList(
            key: PageStorageKey(_listsControllers[_typeToIndex[Service]!]),
            listController: _listsControllers[_typeToIndex[Service]!]
                as ViewableObjectListController<Service>,
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
          ViewableObjectList<Area>(
            viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
              circleCrop: false,
              forceShowSecondLine: false,
            ),
            key: PageStorageKey(_listsControllers[_typeToIndex[Area]!]),
            objectsController: _listsControllers[_typeToIndex[Area]!]
                as ViewableObjectListController<Area>,
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

    final fgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        offset.isNegative ? 1 - offset : offset - 1,
        0,
      ),
      scale: offset.abs(),
      child: FloatingActionButton(
        onPressed: _addItem(context),
        child: newIndex == 0
            ? _addPerson
            : newIndex == 1
                ? _add
                : _addLocation,
      ),
    );

    final bgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        offset.isNegative ? offset - 1 : offset + 1,
        0,
      ),
      scale: 1 - offset.abs(),
      child: FloatingActionButton(
        heroTag: null,
        onPressed: _addItem(context),
        child: currentIdex == 0
            ? _addPerson
            : currentIdex == 1
                ? _add
                : _addLocation,
      ),
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        bgAnimatiedWidget,
        fgAnimatiedWidget,
      ],
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
          context.goNamed('new_person');
        }
      };
}
