import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeSearchResultsView extends StatelessWidget {
  final HomeSearchState state;

  const HomeSearchResultsView({required this.state, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return switch (state) {
      HomeSearchIdle() => Center(
        child: Text('ابدأ بالكتابة للبحث ...', style: textTheme.headlineSmall),
      ),
      HomeSearchLoading() => const Center(child: CircularProgressIndicator()),
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
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(section.label, style: textTheme.headlineSmall),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final (i, item) in section.items.indexed) ...[
                      if (i > 0) const Divider(),
                      ViewableObjectWidget(
                        item,
                        key: ValueKey(item.id),
                        config: const ViewableObjectWidgetConfig(
                          isDense: true,
                          forceShowSecondLine: false,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          );
        },
      ),
    };
  }
}
