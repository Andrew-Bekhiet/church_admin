import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide StudyYear;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomeScreen(),
    redirect: (state) {
      if (!CAAuthRepository.I.isSignedIn) {
        return state.namedLocation('login');
      } else if (CAAuthRepository.I.currentUserData == null) {
        return state.namedLocation('register_user_data');
      }
      return null;
      //TODO: return to normal after testing
      // ignore: dead_code
      final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 30));

      if (CAAuthRepository.I.currentUserData?.lastKodas == null ||
          CAAuthRepository.I.currentUserData!.lastConfession == null ||
          CAAuthRepository.I.currentUserData!.lastKodas!.isBefore(
            thirtyDaysAgo,
          ) ||
          CAAuthRepository.I.currentUserData!.lastConfession!.isBefore(
            thirtyDaysAgo,
          )) {
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

class _HomeScreenState extends State<HomeScreen> {
  final _search = BehaviorSubject<String?>.seeded(null);
  final _bottomNavBar = BehaviorSubject<int>.seeded(1);

  late final _controllers = [
    ListControllerBase<void, Person>(
      objectsPaginatableStream:
          CADatabaseRepository.I.persons.getPersonsStream$(
        searchQuery: _search,
      ),
    ),
    ListControllerBase<void, Service>(
      objectsPaginatableStream:
          CADatabaseRepository.I.services.getServicesStream(
        searchQuery: _search,
      ),
    ),
    ListControllerBase<void, Area>(
      objectsPaginatableStream: CADatabaseRepository.I.areas.getAreasStream(
        searchQuery: _search,
      ),
    ),
  ];

  @override
  Future<void> dispose() async {
    super.dispose();

    await _search.close();
    await _bottomNavBar.close();

    await Future.wait(_controllers.map((c) => c.dispose()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<String?>(
          stream: _search,
          builder: (context, searchData) {
            if (searchData.hasData) {
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
      body: StreamBuilder<int>(
        initialData: _bottomNavBar.value,
        stream: _bottomNavBar.distinct(),
        builder: (context, indexData) {
          if (indexData.requireData == 1) {
            return DataObjectListViewBase<void, Service>(
              key: PageStorageKey(_controllers[indexData.requireData]),
              controller: _controllers[indexData.requireData]
                  as ListControllerBase<void, Service>,
              autoDisposeController: false,
              itemBuilder: _buildServiceTile,
            );
          } else if (indexData.requireData == 0) {
            return DataObjectListViewBase<void, Person>(
              key: PageStorageKey(_controllers[indexData.requireData]),
              controller: _controllers[indexData.requireData]
                  as ListControllerBase<void, Person>,
              autoDisposeController: false,
              itemBuilder: _buildPersonTile,
            );
          }

          return DataObjectListViewBase<void, ViewableWithID>(
            key: PageStorageKey(_controllers[indexData.requireData]),
            controller: _controllers[indexData.requireData],
            autoDisposeController: false,
          );
        },
      ),
      bottomNavigationBar: StreamBuilder<int>(
        initialData: _bottomNavBar.value,
        stream: _bottomNavBar.distinct(),
        builder: (context, indexData) {
          return BottomNavigationBar(
            onTap: _bottomNavBar.add,
            currentIndex: indexData.requireData,
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
    return ExpansionTile(
      key: PageStorageKey(s),
      leading: PhotoObjectWidget(
        s,
        circleCrop: false,
      ),
      expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
      maintainState: true,
      title: GestureDetector(
        onTap: onTap != null ? () => onTap(s) : null,
        onLongPress: onLongPress != null ? () => onLongPress(s) : null,
        child: Text(s.name),
      ),
      children: [
        for (final c in s.classes ?? <Class>[])
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ViewableObjectWidget(
              c,
              showSubtitle: false,
            ),
          ),
        if (s.fromStudyYear != null &&
            s.toStudyYear != null &&
            s.toStudyYear!.order - s.fromStudyYear!.order >= 1 &&
            (s.groups?.isNotEmpty ?? false))
          const Divider(),
        for (final g in s.groups ?? <Group>[])
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: ViewableObjectWidget(
              g,
              showSubtitle: false,
            ),
          ),
      ],
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
