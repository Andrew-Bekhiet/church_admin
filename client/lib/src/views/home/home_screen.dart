import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/views/home/home_appbar.dart';
import 'package:church_admin/src/views/home/home_body.dart';
import 'package:church_admin/src/views/home/home_bottom_navbar.dart';
import 'package:church_admin/src/views/home/home_drawer.dart';
import 'package:church_admin/src/views/home/home_fab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: '/',
    builder: (context, state) =>
        kIsWeb ? const DownloadAppScreen() : const HomeScreen(),
    routes: !kIsWeb
        ? [
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
          ]
        : [],
    redirect: (context, state) {
      return redirect(state);
    },
  );

  @visibleForTesting
  static String? redirect(_) {
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

class _HomeScreenState extends State<HomeScreen> {
  final BehaviorSubject<String?> _search = BehaviorSubject.seeded(null);
  final BehaviorSubject<ViewableObjectListType> _servicesListType =
      BehaviorSubject.seeded(ViewableObjectListType.list);
  final BehaviorSubject<Type> _bottomNavBar = BehaviorSubject.seeded(Service);

  final Map<Type, ViewableObjectListController> _controllersToDispose = {};
  final Set<Timer> _timers = {};

  final List<Type> _tabTypes = [Person, Service, Area];

  late final StreamSubscription<void> _localAuthListener;

  @override
  void initState() {
    super.initState();
    _listenToLocalAuth();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabTypes.length,
      initialIndex: 1,
      child: Scaffold(
        drawer: const HomeDrawer(),
        appBar: HomeAppBar(
          searchSubject: _search,
          bottomNavBarStream: _bottomNavBar,
          servicesListTypeSubject: _servicesListType,
        ),
        body: HomeBody(
          servicesListTypeStream: _servicesListType,
          personsController: () => _putControllerIfAbsentUsing<Person>(
            DatabaseService.I.persons.streamAll,
          ),
          servicesController: () => _putControllerIfAbsentUsing<Service>(
            DatabaseService.I.services.streamAll,
          ),
          areasController: () => _putControllerIfAbsentUsing<Area>(
            DatabaseService.I.areas.streamAll,
          ),
        ),
        floatingActionButton: const HomeFloatingActionButton(),
        bottomNavigationBar: HomeBottomNavBar(
          onTabChanged: (i) => _bottomNavBar.add(_tabTypes[i]),
        ),
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
