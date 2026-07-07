import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

typedef HistoryChartSpec = ({
  bool Function(PersonAnalysisOptions) enabled,
  HistoryAggregateData? Function(Person?) aggregate,
  ViewableObjectListController<LastRecordedByInfo> Function(String personId)
  controller,
  String title,
  String lastTimeName,
});

class PersonHistoryChartsView extends StatefulWidget {
  static final List<HistoryChartSpec> _historyChartSpecs = [
    (
      enabled: (o) => o.kodasAnalysis,
      aggregate: (p) => p?.kodasHistoryAggregate,
      controller: (personId) => ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.history
            .paginatePersonKodasHistory(personId: personId),
      ),
      title: 'حضور القداس',
      lastTimeName: 'أخر حضور قداس',
    ),
    (
      enabled: (o) => o.confessionAnalysis,
      aggregate: (p) => p?.confessionHistoryAggregate,
      controller: (personId) => ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.history
            .paginatePersonConfessionHistory(personId: personId),
      ),
      title: 'الاعتراف',
      lastTimeName: 'أخر اعتراف',
    ),
    (
      enabled: (o) => o.callHistoryAnalysis,
      aggregate: (p) => p?.callHistoryAggregate,
      controller: (personId) => ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.history
            .paginatePersonCallHistory(personId: personId),
      ),
      title: 'خدمة المكالمات',
      lastTimeName: 'أخر مكالمة',
    ),
    (
      enabled: (o) => o.visitHistoryAnalysis,
      aggregate: (p) => p?.visitHistoryAggregate,
      controller: (personId) => ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.history
            .paginatePersonVisitHistory(personId: personId),
      ),
      title: 'الافتقاد',
      lastTimeName: 'أخر افتقاد',
    ),
    (
      enabled: (o) => o.editHistoryAnalysis,
      aggregate: (p) => p?.editHistoryAggregate,
      controller: (personId) => ViewableObjectListController(
        objectsPaginatableStream: DatabaseService.I.history
            .paginateEditHistory<Person>(id: personId),
      ),
      title: 'تحديث البيانات',
      lastTimeName: 'أخر تحديث للبيانات',
    ),
  ];

  final Person person;
  final PersonAnalysisOptions options;

  DateTimeRange get dateRange => options.dateRange;

  const PersonHistoryChartsView({
    required this.person,
    required this.options,
    super.key,
  });

  @override
  State<PersonHistoryChartsView> createState() =>
      _PersonHistoryChartsViewState();
}

class _PersonHistoryChartsViewState extends State<PersonHistoryChartsView> {
  late Future<Person?> _analysis;

  @override
  void initState() {
    super.initState();
    _analysis = _loadAnalysis();
  }

  @override
  Widget build(BuildContext context) {
    final person = widget.person;
    final options = widget.options;

    return FutureBuilder<Person?>(
      initialData: person,
      future: _analysis,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorWidget.builder(
            FlutterErrorDetails(exception: snapshot.error!),
          );
        }

        final loaded = snapshot.data;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final spec in PersonHistoryChartsView._historyChartSpecs)
              if (spec.enabled(options))
                switch (spec.aggregate(loaded)) {
                  null => const Center(child: CircularProgressIndicator()),
                  final aggregate => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: PersonAnalysisChart(
                      analysisData: aggregate,
                      getHistoryListController: () =>
                          spec.controller(person.id),
                      title: spec.title,
                      range: widget.dateRange,
                      lastTimeName: spec.lastTimeName,
                    ),
                  ),
                },
          ],
        );
      },
    );
  }

  @override
  void didUpdateWidget(PersonHistoryChartsView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.person.id != widget.person.id ||
        oldWidget.options != widget.options) {
      _analysis = _loadAnalysis();
    }
  }

  Future<Person?> _loadAnalysis() => DatabaseService.I.persons.getPersonAnalysis(
    personId: widget.person.id,
    options: widget.options,
  );
}
