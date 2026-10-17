import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeListPage extends StatelessWidget {
  final HomeTab tab;
  final Widget child;

  const HomeListPage({required this.tab, required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return Column(
      children: [
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              previous.currentTabIndex != current.currentTabIndex ||
              previous.currentTabTotal != current.currentTabTotal ||
              previous.listTypeOf(tab) != current.listTypeOf(tab),
          builder: (context, state) {
            final isCurrent = state.currentTab == tab;

            return HomeListHeader(
              total: isCurrent ? state.currentTabTotal : null,
              label: tab.label,
              listType: state.listTypeOf(tab),
              onToggleListType: isCurrent ? homeCubit.toggleListType : null,
            );
          },
        ),
        Expanded(child: child),
      ],
    );
  }
}
