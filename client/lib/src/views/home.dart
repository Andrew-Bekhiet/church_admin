import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide StudyYear;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomeScreen(),
    routes: [
      ViewPerson.route,
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

  final Map<Type, int> _typeToIndex = {Person: 0, Service: 1, Area: 2};

  final List<AnimationController> _animationControllers = [];

  Stream<String?> _getSearchStreamFor<T>() {
    return Rx.combineLatest2<String?, Type, String?>(
      _search,
      _bottomNavBar,
      (s, t) => t == T ? s : null,
    ).debounceTime(const Duration(seconds: 1)).shareValue();
  }

  @override
  void initState() {
    _tabController.addListener(
      () => _bottomNavBar.add(
        _typeToIndex.keys.elementAt(_tabController.index),
      ),
    );
    super.initState();
  }

  @override
  Future<void> dispose() async {
    _tabController.dispose();
    await _search.close();
    await _bottomNavBar.close();

    await Future.wait(_listsControllers.map((c) => c.dispose()));
    for (final c in _animationControllers) {
      c.dispose();
    }

    super.dispose();
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
              return TextFormField(
                autofocus: true,
                onChanged: _search.add,
                textInputAction: TextInputAction.search,
                style: DefaultTextStyle.of(context).style,
                decoration: InputDecoration(
                  hintText: 'بحث ...',
                  hintStyle: DefaultTextStyle.of(context).style.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => _search.add(null),
                    icon: const Icon(Icons.clear),
                  ),
                ),
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
          DataObjectListViewBase<void, Service>(
            key: PageStorageKey(_listsControllers[_typeToIndex[Service]!]),
            controller: _listsControllers[_typeToIndex[Service]!]
                as ListControllerBase<void, Service>,
            autoDisposeController: false,
            itemBuilder: _buildServiceTile,
          ),
          DataObjectListViewBase<void, Area>(
            key: PageStorageKey(_listsControllers[_typeToIndex[Area]!]),
            controller: _listsControllers[_typeToIndex[Area]!]
                as ListControllerBase<void, Area>,
            autoDisposeController: false,
          ),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: _tabController,
        builder: (context, child) {
          return BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.background,
            type: BottomNavigationBarType.shifting,
            onTap: (v) => _tabController.index = v,
            currentIndex: _tabController.index,
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

  Widget _buildServiceTile(
    Service s, {
    void Function(Service)? onLongPress,
    void Function(Service)? onTap,
    Widget? trailing,
    Widget? subtitle,
  }) {
    final _topController = AnimationController(
      duration: const Duration(milliseconds: 225),
      vsync: this,
    );

    _animationControllers.add(_topController);

    return AnimatedBuilder(
      animation: _topController.drive(
        Tween(begin: 0, end: 1).chain(
          CurveTween(curve: Curves.easeIn),
        ),
      ),
      builder: (contex, child) => Card(
        elevation: _topController.value * 3,
        child: ExpansionTile(
          key: PageStorageKey(s),
          leading: PhotoObjectWidget(
            s,
            circleCrop: false,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.rotate(
                angle: _topController.value * pi,
                child: const Icon(Icons.expand_more),
              ),
              IconButton(
                onPressed: onTap != null ? () => onTap(s) : null,
                icon: const Icon(Icons.info),
              ),
            ],
          ),
          onExpansionChanged: (e) =>
              e ? _topController.forward() : _topController.animateBack(0),
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          maintainState: true,
          title: GestureDetector(
            onLongPress: onLongPress != null ? () => onLongPress(s) : null,
            child: Text(s.name),
          ),
          children: [
            for (final sc
                in s.classes?.groupListsBy((c) => c.studyYear!).entries ??
                    <StudyYear, List<Class>>{}.entries)
              if (sc.value.length > 1)
                Padding(
                  padding: EdgeInsets.only(right: _topController.value * 20),
                  child: Card(
                    elevation: 0,
                    child: ExpansionTile(
                      key: PageStorageKey(sc.key),
                      title: Text(sc.key.name),
                      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                      maintainState: true,
                      children: [
                        for (final c in sc.value)
                          Padding(
                            padding: EdgeInsets.only(
                                right: _topController.value * 20),
                            child: ViewableObjectWidget(
                              c,
                              showSubtitle: false,
                              wrapInCard: false,
                              isDense: true,
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              else
                Padding(
                  padding: EdgeInsets.only(right: _topController.value * 20),
                  child: ViewableObjectWidget(
                    sc.value.single,
                    showSubtitle: false,
                    wrapInCard: false,
                  ),
                ),
            if (s.fromStudyYear != null &&
                s.toStudyYear != null &&
                s.toStudyYear!.order - s.fromStudyYear!.order >= 1 &&
                (s.groups?.isNotEmpty ?? false))
              const Divider(),
            for (final g in s.groups ?? <Group>[])
              Padding(
                padding: EdgeInsets.only(right: _topController.value * 20),
                child: ViewableObjectWidget(
                  g,
                  showSubtitle: false,
                  wrapInCard: false,
                ),
              ),
          ],
        ),
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
      photo: PhotoObjectWidget(p),
      subtitle: subtitle,
    );
  }
}
