import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final SearchController _searchController = SearchController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = HomeSearchCubit();
        _searchController.addListener(
          () => cubit.search(_searchController.text),
        );

        return cubit;
      },
      child: Builder(
        builder: (context) {
          final cubit = context.read<HomeSearchCubit>();

          return SearchAnchor.bar(
            barElevation: const WidgetStatePropertyAll(0),
            searchController: _searchController,
            constraints: const BoxConstraints(minHeight: 40),
            barHintText: 'بحث ...',
            barLeading: const Icon(Symbols.search),
            viewHintText: 'ابحث عن شخص، منطقة، خدمة ...',
            suggestionsBuilder: (_, _) => const [],
            viewBuilder: (_) => BlocBuilder<HomeSearchCubit, HomeSearchState>(
              bloc: cubit,
              builder: (_, state) => HomeSearchResultsView(state: state),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }
}
