import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonAnalysis extends StatefulWidget {
  static final route = GoRoute(
    path: 'personAnalysis',
    builder: (_, state) {
      if (state.extra == null) {
        throw ArgumentError.notNull('state.extra');
      } else if (state.extra is! Map<String, dynamic>) {
        throw ArgumentError.value(
          state.extra,
          'state.extra',
          'expected a Map but got ' + state.extra.runtimeType.toString(),
        );
      }

      final extra = state.extra! as Map<String, dynamic>;

      return PersonAnalysis(
        person: extra['person'],
        user: extra['user'],
        onEditOptions: extra['onEditOptions'],
        options: extra['options'],
      );
    },
  );

  final Person? person;
  final User? user;
  final PersonAnalysisOptions? options;
  final Widget Function(
    BuildContext,
    PersonAnalysisOptions?,
    void Function(PersonAnalysisOptions),
  ) onEditOptions;

  const PersonAnalysis({
    required this.onEditOptions,
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
      return widget.onEditOptions(
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
                  builder: (context) => widget.onEditOptions(
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
            icon: const Icon(Icons.edit),
            tooltip: 'تعديل البحث',
          ),
          if (options != null)
            IconButton(
              onPressed: () => setState(() {}),
              icon: const Icon(Icons.refresh),
              tooltip: 'تحديث البيانات',
            ),
        ],
        title:
            Text('تحليل الحضور ل' + (widget.user?.name ?? widget.person!.name)),
      ),
      body: ListView(
        children: [
          FutureBuilder<ViewableWithID?>(
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

              final user = snapshot.requireData! is User
                  ? snapshot.requireData! as User
                  : null;
              final person = snapshot.requireData! is Person
                  ? snapshot.requireData! as Person
                  : null;
              final userColor = user?.color ?? person?.color;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final s
                      in user?.servicesHistory?.map((e) => e.service!) ??
                          person?.services ??
                          <Service>[])
                    if (s.attendanceHistoryAggregate == null ||
                        s.attendanceDaysConstraintsAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: KeepAlive(
                          keepAlive: true,
                          child: PersonAttendanceIndicator(
                            name: s.name,
                            range: dateRange,
                            analysisData: s.attendanceHistoryAggregate!,
                            totalAnalysisData:
                                s.attendanceDaysConstraintsAggregate!,
                            getHistoryStream: () => DatabaseService.I.persons
                                .paginatePersonServiceAttendance(
                              personId:
                                  widget.user?.person?.id ?? widget.person!.id,
                              asAdmin: widget.user != null,
                              serviceId: s.id,
                            ),
                            color: s.color ?? userColor,
                          ),
                        ),
                      ),
                  for (final c in user?.classesHistory
                          ?.map((e) => e.classes)
                          .expand((e) => e) ??
                      person?.classes ??
                      <Class>[])
                    if (c.attendanceHistoryAggregate == null ||
                        c.attendanceDaysConstraintsAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: KeepAlive(
                          keepAlive: true,
                          child: PersonAttendanceIndicator(
                            name: c.name,
                            range: dateRange,
                            analysisData: c.attendanceHistoryAggregate!,
                            totalAnalysisData:
                                c.attendanceDaysConstraintsAggregate!,
                            getHistoryStream: () => DatabaseService.I.persons
                                .paginatePersonClassAttendance(
                              personId:
                                  widget.user?.person?.id ?? widget.person!.id,
                              asAdmin: widget.user != null,
                              classId: c.id,
                            ),
                            color: c.color ?? userColor,
                          ),
                        ),
                      ),
                  for (final g in user?.groupsHistory?.map((e) => e.group!) ??
                      person?.groups ??
                      <Group>[])
                    if (g.attendanceHistoryAggregate == null ||
                        g.attendanceDaysConstraintsAggregate == null)
                      const Center(child: CircularProgressIndicator())
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: KeepAlive(
                          keepAlive: true,
                          child: PersonAttendanceIndicator(
                            name: g.name,
                            range: dateRange,
                            analysisData: g.attendanceHistoryAggregate!,
                            totalAnalysisData:
                                g.attendanceDaysConstraintsAggregate!,
                            getHistoryStream: () => DatabaseService.I.persons
                                .paginatePersonGroupAttendance(
                              personId:
                                  widget.user?.person?.id ?? widget.person!.id,
                              asAdmin: widget.user != null,
                              groupId: g.id,
                            ),
                            color: g.color ?? userColor,
                          ),
                        ),
                      ),
                  if (widget.person != null) ...[
                    if (options!.kodasAnalysis)
                      if (person?.kodasHistoryAggregate == null)
                        const Center(child: CircularProgressIndicator())
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: KeepAlive(
                            keepAlive: true,
                            child: PersonAnalysisChart(
                              analysisData: person!.kodasHistoryAggregate!,
                              getHistoryStream: () => DatabaseService.I.history
                                  .paginatePersonConfessionHistory(
                                personId: widget.person!.id,
                              ),
                              title: 'الاعتراف',
                              range: dateRange,
                              lastTimeName: 'أخر اعتراف',
                            ),
                          ),
                        ),
                    if (options!.confessionAnalysis)
                      if (person?.confessionHistoryAggregate == null)
                        const Center(child: CircularProgressIndicator())
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: KeepAlive(
                            keepAlive: true,
                            child: PersonAnalysisChart(
                              analysisData: person!.confessionHistoryAggregate!,
                              getHistoryStream: () => DatabaseService.I.history
                                  .paginatePersonKodasHistory(
                                personId: widget.person!.id,
                              ),
                              title: 'حضور القداس',
                              range: dateRange,
                              lastTimeName: 'أخر حضور قداس',
                            ),
                          ),
                        ),
                    if (options!.callHistoryAnalysis)
                      if (person?.callHistoryAggregate == null)
                        const Center(child: CircularProgressIndicator())
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: KeepAlive(
                            keepAlive: true,
                            child: PersonAnalysisChart(
                              analysisData: person!.callHistoryAggregate!,
                              getHistoryStream: () => DatabaseService.I.history
                                  .paginatePersonCallHistory(
                                personId: widget.person!.id,
                              ),
                              title: 'خدمة المكالمات',
                              range: dateRange,
                              lastTimeName: 'أخر مكالمة',
                            ),
                          ),
                        ),
                    if (options!.visitHistoryAnalysis)
                      if (person?.visitHistoryAggregate == null)
                        const Center(child: CircularProgressIndicator())
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: KeepAlive(
                            keepAlive: true,
                            child: PersonAnalysisChart(
                              analysisData: person!.visitHistoryAggregate!,
                              getHistoryStream: () => DatabaseService.I.history
                                  .paginatePersonVisitHistory(
                                personId: widget.person!.id,
                              ),
                              title: 'الافتقاد',
                              range: dateRange,
                              lastTimeName: 'أخر افتقاد',
                            ),
                          ),
                        ),
                    if (options!.editHistoryAnalysis)
                      if (person?.editHistoryAggregate == null)
                        const Center(child: CircularProgressIndicator())
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: KeepAlive(
                            keepAlive: true,
                            child: PersonAnalysisChart(
                              analysisData: person!.editHistoryAggregate!,
                              getHistoryStream: () => DatabaseService.I.history
                                  .paginateEditHistory<Person>(
                                id: widget.person!.id,
                              ),
                              title: 'تحديث البيانات',
                              range: dateRange,
                              lastTimeName: 'أخر تحديث للبيانات',
                            ),
                          ),
                        ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
