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
            searchQuery: _search,
          ),
        ),
        autoDisposeController: true,
      ),
    );
  }
}
