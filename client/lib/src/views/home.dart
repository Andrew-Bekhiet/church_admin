import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
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
      body: DataObjectListViewBase(
        controller: ListControllerBase(
          objectsPaginatableStream: CADatabaseRepository.I.getPersonsStream$(
            searchQuery: _search
                .debounceTime(const Duration(milliseconds: 400))
                .distinct(
                  (p, n) =>
                      p == n ||
                      (n == '' && p == null) ||
                      (p == '' && n == null),
                ),
          ),
        ),
        autoDisposeController: true,
      ) /* StreamBuilder<List<Person>>(
        stream: _search
            .debounceTime(const Duration(milliseconds: 400))
            .distinct(
              (p, n) =>
                  p == n || (n == '' && p == null) || (p == '' && n == null),
            )
            .switchMap(
              (searchQuery) => searchQuery == null || searchQuery.isEmpty
                  ? CADatabaseRepository.I.getPersonsStream$().map(
                        (event) => event.parsedData!.persons
                            .map((p) => Person.fromJson(p.toJson()))
                            .toList(),
                      )
                  : CADatabaseRepository.I
                      .searchPersons(searchQuery: searchQuery)
                      .map(
                        (event) => event.parsedData!.persons
                            .map((p) => Person.fromJson(p.toJson()))
                            .toList(),
                      ),
            ),
        builder: (context, data) {
          if (data.hasError) {
            return ErrorWidget.builder(
              FlutterErrorDetails(exception: data.error!),
            );
          } else if (!data.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final dataList = data.requireData;

          if (dataList.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'لا يوجد عناصر',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            prototypeItem: Card(
              key: ValueKey(dataList[0].id),
              child: ListTile(
                title: Text(dataList[0].name),
              ),
            ),
            itemCount: dataList.length,
            itemBuilder: (context, i) => Card(
              key: ValueKey(dataList[i].id),
              child: ListTile(
                title: Text(dataList[i].name),
              ),
            ),
          );
        },
      ) */
      ,
    );
  }
}
