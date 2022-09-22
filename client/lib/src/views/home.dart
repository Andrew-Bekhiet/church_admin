import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide StudyYear;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      ViewPerson.route,
      EditPerson.newPersonRoute,
      GoRoute(
        name: 'service_info',
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
      GoRoute(
        name: 'area_info',
        path: 'viewArea',
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
        name: 'group_info',
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
        name: 'class_info',
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
    redirect: (state) {
      if (!CAAuthRepository.I.isSignedIn) {
        return state.namedLocation('login');
      } else if (CAAuthRepository.I.currentUserData == null) {
        return state.namedLocation('register_user_data');
      } else if (!CAAuthRepository.I.currentUserData!.spiritDataUpToDate()) {
        return state.namedLocation(
          'update_user_data',
          queryParams: {'forced': 'true'},
        );
      } else if (LocalAuthService.I.shouldAuthenticate) {
        return state.namedLocation(
          'authenticate',
          queryParams: {'next': state.location},
        );
      }
      return null;
    },
  );

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _search = BehaviorSubject<String?>.seeded(null);
  final _bottomNavBar = BehaviorSubject<Type>.seeded(Service);

  late final _listsControllers = [
    ListControllerBase<void, Person>(
      objectsPaginatableStream: CADatabaseRepository.I.persons.getPersonsStream(
        searchQuery: _getSearchStreamFor<Person>(),
        secondLineFieldName: GetIt.I<UserSettings>().getSecondLineFor(Person),
      ),
    ),
    ListControllerBase<void, Service>(
      objectsPaginatableStream:
          CADatabaseRepository.I.services.getServicesStream(
        searchQuery: _getSearchStreamFor<Service>(),
      ),
    ),
    ListControllerBase<void, Area>(
      objectsPaginatableStream: CADatabaseRepository.I.areas.getAreasStream(
        searchQuery: _getSearchStreamFor<Area>(),
      ),
    ),
  ];

  late final TabController _tabController = TabController(
    length: 3,
    vsync: this,
    initialIndex: 1,
  );

  late final _fabAnimationController = AnimationController(
    vsync: this,
    duration: _tabController.animationDuration,
    lowerBound: -1,
    value: 0,
  );

  final Map<Type, int> _typeToIndex = {Person: 0, Service: 1, Area: 2};

  Stream<String?> _getSearchStreamFor<T>() {
    return Rx.combineLatest2<String?, Type, String?>(
      _search,
      _bottomNavBar,
      (s, t) => t == T ? s : null,
    ).debounceTime(const Duration(seconds: 1)).shareValue();
  }

  @override
  void initState() {
    super.initState();

    _tabController.addListener(_tabControllerListener);
    _tabController.animation!.addListener(_tabControllerAnimationListener);
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

  @override
  Future<void> dispose() async {
    super.dispose();

    _tabController.dispose();
    _fabAnimationController.dispose();
    await _search.close();
    await _bottomNavBar.close();

    await Future.wait(_listsControllers.map((c) => c.dispose()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: TabBarView(
        controller: _tabController,
        children: [
          DataObjectListViewBase<void, Person>(
            key: PageStorageKey(_listsControllers[_typeToIndex[Person]!]),
            controller: _listsControllers[_typeToIndex[Person]!]
                as ListControllerBase<void, Person>,
            autoDisposeController: false,
            itemBuilder: _buildPersonTile,
          ),
          ServicesHierarchyList(
            key: PageStorageKey(_listsControllers[_typeToIndex[Service]!]),
            listController: _listsControllers[_typeToIndex[Service]!]
                as ListControllerBase<void, Service>,
            serviceBuilder: (
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
          DataObjectListViewBase<void, Area>(
            key: PageStorageKey(_listsControllers[_typeToIndex[Area]!]),
            controller: _listsControllers[_typeToIndex[Area]!]
                as ListControllerBase<void, Area>,
            autoDisposeController: false,
            itemBuilder: (a, {onLongPress, onTap, subtitle, trailing}) =>
                ViewableObjectWidget(
              a,
              showSubtitle: false,
              onLongPress: onLongPress != null ? () => onLongPress(a) : null,
              onTap: onTap != null ? () => onTap(a) : null,
              trailing: trailing,
            ),
          ),
        ],
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _fabAnimationController,
        builder: (context, child) {
          final offset = _fabAnimationController.value;

          final newIndex = offset.isNegative
              ? (_tabController.index + offset).floor()
              : (_tabController.index + offset).ceil();

          final fgAnimatiedWidget = Transform.scale(
            alignment: Alignment(
              offset.isNegative ? 1 - offset : offset - 1,
              0,
            ),
            scale: offset.abs(),
            child: FloatingActionButton(
              onPressed: () {
                if (newIndex == 0) {
                  context.goNamed('new_person');
                }
              },
              child: newIndex == 0
                  ? const Icon(Icons.person_add_alt_1)
                  : newIndex == 1
                      ? const Icon(Icons.add)
                      : const Icon(Icons.add_location),
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
              onPressed: () {
                if (newIndex == 0) {
                  context.goNamed('new_person');
                }
              },
              child: _tabController.index == 0
                  ? const Icon(Icons.person_add_alt_1)
                  : _tabController.index == 1
                      ? const Icon(Icons.add)
                      : const Icon(Icons.add_location),
            ),
          );

          return Stack(
            alignment: Alignment.center,
            children: [
              bgAnimatiedWidget,
              fgAnimatiedWidget,
            ],
          );
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: _tabController.animation!,
        builder: (context, child) {
          return BottomNavigationBar(
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            backgroundColor: Theme.of(context).colorScheme.primary,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.background,
            type: BottomNavigationBarType.shifting,
            onTap: (v) {
              _tabController.animateTo(v);
              _bottomNavBar.add(
                _typeToIndex.keys.elementAt(_tabController.index),
              );
            },
            currentIndex:
                _tabController.animation?.value.round() ?? _tabController.index,
            items: const [
              BottomNavigationBarItem(
                label: 'المخدومين',
                icon: Icon(Icons.person),
              ),
              BottomNavigationBarItem(
                label: 'الخدمات',
                icon: Icon(Icons.miscellaneous_services),
              ),
              BottomNavigationBarItem(
                label: 'المناطق',
                icon: Icon(Icons.pin_drop),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildPersonTile(
    Person p, {
    void Function(Person)? onLongPress,
    void Function(Person)? onTap,
    Widget? trailing,
    Widget? subtitle,
  }) {
    return ViewableObjectWidget(
      p,
      onLongPress: onLongPress != null ? () => onLongPress(p) : null,
      onTap: onTap != null ? () => onTap(p) : null,
      photo: PhotoObjectWidget(p, heroTag: p),
      subtitle: subtitle,
    );
  }
}
