import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeCubit _homeCubit = HomeCubit.I;

  late final PageController _pageController = PageController(
    initialPage: _homeCubit.state.currentTabIndex,
  );

  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

    _appLifecycleListener = AppLifecycleListener(
      onStateChange: _homeCubit.recordLifecycle,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeCubit,
      child: BlocListener<HomeCubit, HomeState>(
        listenWhen: (previous, current) =>
            previous.currentTabIndex != current.currentTabIndex,
        listener: (context, state) {
          if (_pageController.hasClients &&
              _pageController.page?.round() != state.currentTabIndex) {
            _pageController.jumpToPage(state.currentTabIndex);
          }
        },
        child: Scaffold(
          drawer: const HomeDrawer(),
          appBar: const HomeAppBar(),
          body: HomeBody(pageController: _pageController),
          floatingActionButton: HomeFAB(pageController: _pageController),
          bottomNavigationBar: HomeBottomNavBar(
            pageController: _pageController,
          ),
          extendBody: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();
    _pageController.dispose();

    super.dispose();
  }
}
