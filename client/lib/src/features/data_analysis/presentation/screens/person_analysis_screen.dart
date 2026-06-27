import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

typedef EditOptionsBuiderFn =
    Widget Function(
      BuildContext,
      PersonAnalysisOptions?,
      void Function(PersonAnalysisOptions),
    );

class PersonAnalysis extends StatefulWidget {
  final Person? person;
  final User? user;
  final PersonAnalysisOptions? options;
  final EditOptionsBuiderFn editOptionsBuilder;

  const PersonAnalysis({
    required this.editOptionsBuilder,
    this.person,
    this.user,
    this.options,
    super.key,
  }) : assert(user != null || person != null);

  @override
  State<PersonAnalysis> createState() => _PersonAnalysisState();
}

class _PersonAnalysisState extends State<PersonAnalysis> {
  late PersonAnalysisOptions? options = widget.options;

  List<String> get groupsIds => options!.groups.map((e) => e.id).toList();
  List<String> get classesIds => options!.classes.map((e) => e.id).toList();
  List<String> get servicesIds => options!.services.map((e) => e.id).toList();
  DateTimeRange get dateRange => options!.dateRange;

  @override
  Widget build(BuildContext context) {
    if (options == null) {
      return widget.editOptionsBuilder(
        context,
        options,
        (o) => setState(
          () => options = o,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              final staged = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => widget.editOptionsBuilder(
                    context,
                    options,
                    (o) => Navigator.of(context).pop(o),
                  ),
                ),
              );

              if (staged != null && staged != options) {
                options = staged;
                if (mounted) {
                  setState(() {});
                }
              }
            },
            icon: const Icon(Symbols.edit),
            tooltip: 'تعديل البحث',
          ),
          if (options != null)
            IconButton(
              onPressed: () => setState(() {}),
              icon: const Icon(Symbols.refresh),
              tooltip: 'تحديث البيانات',
            ),
        ],
        title: Text(
          'تحليل الحضور ل${widget.user?.name ?? widget.person!.name}',
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<ViewableWithID?>(
          initialData: widget.person,
          future: widget.user != null
              ? DatabaseService.I.users.analyzeUserAttendance(
                  userId: widget.user!.id,
                  personId: widget.user!.person?.id ?? widget.person!.id,
                  dateFrom: dateRange.start,
                  dateTo: dateRange.end,
                  groupsIds: groupsIds,
                  classesIds: classesIds,
                  servicesIds: servicesIds,
                )
              : DatabaseService.I.persons.getPersonAnalysis(
                  personId: widget.person!.id,
                  options: options!,
                ),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorWidget.builder(
                FlutterErrorDetails(exception: snapshot.error!),
              );
            }

            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            }

            final person = snapshot.requireData! is Person
                ? snapshot.requireData! as Person
                : null;

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO(ENG-99-follow-up): Migrate attendance analysis charts
                // to the new meetings model. The old attendance_history fields
                // (dayId, asAdmin, service/class/group direct joins) no longer
                // exist in the schema after the meetings migration (#70).
                // This section is temporarily hidden until the analysis
                // data layer is rebuilt on top of meetings.
                const SizedBox.shrink(),
                if (widget.person != null) ...[
                  if (options!.kodasAnalysis)
                    if (person?.kodasHistoryAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PersonAnalysisChart(
                          analysisData: person!.kodasHistoryAggregate!,
                          getHistoryListController: () =>
                              ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I
                                    .history
                                    .paginatePersonConfessionHistory(
                                      personId: widget.person!.id,
                                    ),
                              ),
                          title: 'الاعتراف',
                          range: dateRange,
                          lastTimeName: 'أخر اعتراف',
                        ),
                      ),
                  if (options!.confessionAnalysis)
                    if (person?.confessionHistoryAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PersonAnalysisChart(
                          analysisData: person!.confessionHistoryAggregate!,
                          getHistoryListController: () =>
                              ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I
                                    .history
                                    .paginatePersonKodasHistory(
                                      personId: widget.person!.id,
                                    ),
                              ),
                          title: 'حضور القداس',
                          range: dateRange,
                          lastTimeName: 'أخر حضور قداس',
                        ),
                      ),
                  if (options!.callHistoryAnalysis)
                    if (person?.callHistoryAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PersonAnalysisChart(
                          analysisData: person!.callHistoryAggregate!,
                          getHistoryListController: () =>
                              ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I
                                    .history
                                    .paginatePersonCallHistory(
                                      personId: widget.person!.id,
                                    ),
                              ),
                          title: 'خدمة المكالمات',
                          range: dateRange,
                          lastTimeName: 'أخر مكالمة',
                        ),
                      ),
                  if (options!.visitHistoryAnalysis)
                    if (person?.visitHistoryAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PersonAnalysisChart(
                          analysisData: person!.visitHistoryAggregate!,
                          getHistoryListController: () =>
                              ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I
                                    .history
                                    .paginatePersonVisitHistory(
                                      personId: widget.person!.id,
                                    ),
                              ),
                          title: 'الافتقاد',
                          range: dateRange,
                          lastTimeName: 'أخر افتقاد',
                        ),
                      ),
                  if (options!.editHistoryAnalysis)
                    if (person?.editHistoryAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PersonAnalysisChart(
                          analysisData: person!.editHistoryAggregate!,
                          getHistoryListController: () =>
                              ViewableObjectListController(
                                objectsPaginatableStream: DatabaseService
                                    .I
                                    .history
                                    .paginateEditHistory<Person>(
                                      id: widget.person!.id,
                                    ),
                              ),
                          title: 'تحديث البيانات',
                          range: dateRange,
                          lastTimeName: 'أخر تحديث للبيانات',
                        ),
                      ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
