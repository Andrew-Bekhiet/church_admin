import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeSearchDelegate extends SearchDelegate {
  final HomeSearchCubit searchCubit;

  HomeSearchDelegate(this.searchCubit) : super();

  @override
  ThemeData appBarTheme(BuildContext context) {
    final theme = Theme.of(context);

    return theme.copyWith(
      inputDecorationTheme:
          searchFieldDecorationTheme ??
          const InputDecorationTheme(
            border: InputBorder.none,
          ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    searchCubit.search(query);

    return BlocBuilder<HomeSearchCubit, HomeSearchState>(
      bloc: searchCubit,
      builder: (context, state) {
        final textTheme = Theme.of(context).textTheme;

        return switch (state) {
          HomeSearchIdle() => Center(
            child: Text(
              'ابدأ بالكتابة للبحث ...',
              style: textTheme.headlineSmall,
            ),
          ),
          HomeSearchLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
          HomeSearchNothingFound() => Center(
            child: Text(
              'لم يتم العثور على أي نتائج',
              style: textTheme.headlineSmall,
            ),
          ),
          HomeSearchFailed(:final error) => ErrorWidget.builder(
            FlutterErrorDetails(exception: error),
          ),
          HomeSearchFound(:final sections) => ListView.builder(
            itemCount: sections.length,
            itemBuilder: (context, index) {
              final section = sections[index];

              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 10,
                    ),
                    child: Text(
                      section.label,
                      style: textTheme.headlineSmall,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: section.items
                          .map(
                            (item) => ViewableObjectWidget(
                              item,
                              key: ValueKey(item.id),
                              config: const ViewableObjectWidgetConfig(
                                isDense: true,
                                forceShowSecondLine: false,
                              ),
                            ),
                          )
                          .expandIndexed(
                            (i, w) => i != section.items.length - 1
                                ? [w, const Divider()]
                                : [w],
                          )
                          .toList(),
                    ),
                  ),
                ],
              );
            },
          ),
        };
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) => buildResults(context);
}
