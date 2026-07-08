import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class HomeSearchDelegate extends SearchDelegate {
  static const Duration debounceDuration = Duration(milliseconds: 500);

  final HomeDAO homeDAO;

  HomeSearchDelegate(this.homeDAO) : super();

  Timer? _debounceTimer;
  String _lastQuery = '';

  Future<HomeSearchResults>? _searchFuture;

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
    return StatefulBuilder(
      builder: (context, setState) {
        _debounceTimer?.cancel();
        _debounceTimer = Timer(
          debounceDuration,
          () {
            if (_lastQuery == query) return;

            _lastQuery = query;
            _searchFuture = homeDAO.searchAll(_lastQuery);
            setState(() => query = _lastQuery);
          },
        );

        return FutureBuilder<HomeSearchResults>(
          future: _searchFuture,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorWidget.builder(
                FlutterErrorDetails(exception: snapshot.error!),
              );
            }

            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final results = snapshot.data!;

            final nonEmptySections = results.nonEmptySections;

            if (nonEmptySections.isEmpty) {
              return Center(
                child: Text(
                  'لم يتم العثور على أي نتائج',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }

            return ListView.builder(
              itemCount: nonEmptySections.length,
              itemBuilder: (context, index) {
                final (type, sectionItems) = nonEmptySections[index];

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
                        AdvancedQueriesMetadata()
                            .allQueryablesByType[type]!
                            .label,
                        style: Theme.of(context).textTheme.headlineSmall,
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
                        children: sectionItems
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
                              (i, w) => i != sectionItems.length - 1
                                  ? [w, const Divider()]
                                  : [w],
                            )
                            .toList(),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Center(
        child: Text(
          'ابدأ بالكتابة للبحث ...',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      );
    }

    return buildResults(context);
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    super.dispose();
  }
}
