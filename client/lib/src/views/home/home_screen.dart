import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  final BehaviorSubject<ViewableObjectListType> _servicesListType =
      BehaviorSubject.seeded(ViewableObjectListType.list);
  final BehaviorSubject<Type> _bottomNavBar = BehaviorSubject.seeded(Service);

  final Map<Type, ViewableObjectListController> _controllersToDispose = {};
  final Set<Timer> _timers = {};

  final _authEntry = OverlayEntry(
    builder: (context) => const AuthenticateScreen(),
    opaque: true,
  );
  late final StreamSubscription<void> _localAuthListener;

  late final AppLifecycleListener _appLifecycleListener;

  List<Type> _tabTypes = [];
  bool? _isSundaySchool;

  @override
  void initState() {
    super.initState();

    _listenToLocalAuth();
    _appLifecycleListener =
        AppLifecycleListener(onStateChange: _onAppLifecycleStateChanged);
  }

  @override
  Widget build(BuildContext context) {
    if (_isSundaySchool == null) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('اختيار الخدمة'),
        ),
        body: HomeModeSelector(onModeChanged: _onModeChanged),
      );
    }

    return DefaultTabController(
      length: _tabTypes.length,
      initialIndex: 1,
      child: Scaffold(
        drawer: HomeDrawer(
          isSundaySchool: _isSundaySchool!,
          onModeChanged: _onModeChanged,
        ),
        appBar: HomeAppBar(
          searchSubject: _search,
          bottomNavBarStream: _bottomNavBar,
          servicesListTypeSubject: _servicesListType,
          isSundaySchool: _isSundaySchool!,
          onModeChanged: _onModeChanged,
        ),
        body: HomeBody(
          servicesListTypeStream: _servicesListType,
          isSundaySchool: _isSundaySchool!,
          areasController: () => _putControllerIfAbsentUsing<Area>(
            DatabaseService.I.areas.streamAll,
          ),
          servicesController: () => _putControllerIfAbsentUsing<Service>(
            DatabaseService.I.services.streamAll,
          ),
          streetsController: () => _putControllerIfAbsentUsing<Street>(
            DatabaseService.I.streets.streamAll,
          ),
          storesController: () => _putControllerIfAbsentUsing<Store>(
            DatabaseService.I.stores.streamAll,
          ),
          familiesController: () => _putControllerIfAbsentUsing<Family>(
            DatabaseService.I.families.streamAll,
          ),
          personsController: () => _putControllerIfAbsentUsing<Person>(
            DatabaseService.I.persons.streamAll,
          ),
        ),
        floatingActionButton:
            HomeFloatingActionButton(isSundaySchool: _isSundaySchool!),
        bottomNavigationBar: HomeBottomNavBar(
          isSundaySchool: _isSundaySchool!,
          onTabChanged: (i) => _bottomNavBar.add(_tabTypes[i]),
        ),
      ),
    );
  }

  void _onModeChanged(BuildContext context, bool isSundaySchool) {
    setState(() {
      _isSundaySchool = isSundaySchool;
      if (isSundaySchool) {
        _tabTypes = [Area, Service, Person];
      } else {
        _tabTypes = [Area, Street, Family, Store, Person];
      }
    });

    _syncBottomNavBar(context);
  }

  void _syncBottomNavBar(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final TabController? tabController =
          context.mounted ? DefaultTabController.maybeOf(context) : null;

      if (tabController == null) return;

      if (_bottomNavBar.value == Person || _bottomNavBar.value == Area) {
        tabController.animateTo(_tabTypes.indexOf(_bottomNavBar.value));
      } else {
        _bottomNavBar.add(_tabTypes[tabController.index]);
      }
    });
  }

  void _listenToLocalAuth() {
    final overlay = Overlay.of(context);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => !_authEntry.mounted ? overlay.insert(_authEntry) : null,
    );

    _localAuthListener = LocalAuthService.I.refreshUIStream.listen(
      (_) {
        if (LocalAuthService.I.shouldAuthenticate && !_authEntry.mounted) {
          overlay.insert(_authEntry);
        } else if (!LocalAuthService.I.shouldAuthenticate) {
          _authEntry.remove();
        }
      },
    );
  }

  void _onAppLifecycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed when !_authEntry.mounted:
        UserPersistenceService.I.recordActive();
      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        UserPersistenceService.I.recordLastSeen();
    }
  }

  ViewableObjectListController<T>
      _putControllerIfAbsentUsing<T extends Viewable>(
    GQLPaginatableStream<T> Function({Stream<String?>? searchQuery})
        paginatableStreamFactory,
  ) {
    return _controllersToDispose.putIfAbsent(
      T,
      () {
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
      },
    ) as ViewableObjectListController<T>;
  }

  Stream<String?> _getSearchStreamFor<T>() {
    return Rx.combineLatest2<String?, Type, String?>(
      _search,
      _bottomNavBar,
      (s, t) => t == T ? s : null,
    ).debounce((_) async* {
      final completer = Completer<void>();
      _timers.add(Timer(const Duration(seconds: 1), completer.complete));
      await completer.future;

      yield null;
    });
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();

    _search.close();
    _servicesListType.close();
    _bottomNavBar.close();

    _search.close();
    _bottomNavBar.close();
    _servicesListType.close();
    _localAuthListener.cancel();
    _controllersToDispose.values.map((e) => e.dispose()).toList();
    _timers.map((e) => e.cancel()).toList();

    super.dispose();
  }
}
