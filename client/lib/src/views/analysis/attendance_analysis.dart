import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class PersonAttendanceAnalysis extends StatefulWidget {
  static final personRoute = GoRoute(
    name: 'person_attendance_analysis',
    path: 'personAttendanceAnalysis',
    builder: _routeBuilder,
  );

  static final userRoute = GoRoute(
    name: 'user_attendance_analysis',
    path: 'userAttendanceAnalysis',
    builder: _routeBuilder,
  );

  static Widget _routeBuilder(context, state) {
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

    return PersonAttendanceAnalysis(
      person: extra['person'],
      classesIds: extra['classesIds'],
      groupsIds: extra['groupsIds'],
      servicesIds: extra['servicesIds'],
      dateRange: extra['dateRange'],
      asAdmin: extra['asAdmin'] ?? false,
    );
  }

  final Person person;
  final bool asAdmin;
  final List<String> groupsIds;
  final List<String> classesIds;
  final List<String> servicesIds;
  final DateTimeRange dateRange;

  const PersonAttendanceAnalysis({
    required this.person,
    required this.dateRange,
    this.groupsIds = const [],
    this.classesIds = const [],
    this.servicesIds = const [],
    this.asAdmin = false,
    super.key,
  });

  @override
  State<PersonAttendanceAnalysis> createState() =>
      _PersonAttendanceAnalysisState();
}

class _PersonAttendanceAnalysisState extends State<PersonAttendanceAnalysis> {
  late List<String> groupsIds = widget.groupsIds;
  late List<String> classesIds = widget.classesIds;
  late List<String> servicesIds = widget.servicesIds;
  late DateTimeRange dateRange = widget.dateRange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
            tooltip: 'تحديث البيانات',
          ),
        ],
        title: Text('تحليل الحضور ل' + widget.person.name),
      ),
      body: ListView(
        children: [
          StreamBuilder<Person?>(
            initialData: widget.person,
            stream: CADatabaseRepository.I.persons.analyzePersonAttendance(
              personId: widget.person.id,
              dateFrom: dateRange.start,
              dateTo: dateRange.end,
              groupsIds: groupsIds.map(UuidValue.new).toList(),
              classesIds: classesIds.map(UuidValue.new).toList(),
              servicesIds: servicesIds.map(UuidValue.new).toList(),
              asAdmin: widget.asAdmin,
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

              final data = snapshot.requireData!;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final s in data.services ?? <Service>[])
                    if (s.attendanceHistoryAggregate == null)
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
                            getHistoryStream: () => throw UnimplementedError(),
                            color: s.color ?? data.color,
                          ),
                        ),
                      ),
                  for (final c in data.classes ?? <Class>[])
                    if (c.attendanceHistoryAggregate == null)
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
                            getHistoryStream: () => throw UnimplementedError(),
                            color: c.color ?? data.color,
                          ),
                        ),
                      ),
                  for (final g in data.groups ?? <Group>[])
                    if (g.attendanceHistoryAggregate == null)
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
                            getHistoryStream: () => throw UnimplementedError(),
                            color: g.color ?? data.color,
                          ),
                        ),
                      ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
