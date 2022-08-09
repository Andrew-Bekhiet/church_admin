import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

class AttendanceAnalysis extends StatefulWidget {
  static final route = GoRoute(
    name: 'attendance_analysis',
    path: 'attendanceAnalysis',
    builder: (context, state) {
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

      return AttendanceAnalysis(
        person: extra['person'],
        classesIds: extra['classesIds'],
        groupsIds: extra['groupsIds'],
        servicesIds: extra['servicesIds'],
        dateRange: extra['dateRange'],
      );
    },
  );

  final Person person;
  final List<String> groupsIds;
  final List<String> classesIds;
  final List<String> servicesIds;
  final DateTimeRange dateRange;

  const AttendanceAnalysis({
    required this.person,
    required this.dateRange,
    this.groupsIds = const [],
    this.classesIds = const [],
    this.servicesIds = const [],
    super.key,
  });

  @override
  State<AttendanceAnalysis> createState() => _AttendanceAnalysisState();
}

class _AttendanceAnalysisState extends State<AttendanceAnalysis> {
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
          StreamBuilder<Person>(
            initialData: widget.person,
            stream: CADatabaseRepository.I.persons.analyzePersonAttendance(
              personId: widget.person.id,
              dateFrom: dateRange.start,
              dateTo: dateRange.end,
              groupsIds: groupsIds.map(UuidValue.new).toList(),
              classesIds: classesIds.map(UuidValue.new).toList(),
              servicesIds: servicesIds.map(UuidValue.new).toList(),
            ),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorWidget.builder(
                  FlutterErrorDetails(exception: snapshot.error!),
                );
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final s in snapshot.requireData.services ?? <Service>[])
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
                            color: s.color ?? snapshot.requireData.color,
                          ),
                        ),
                      ),
                  for (final c in snapshot.requireData.classes ?? <Class>[])
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
                            color: c.color ?? snapshot.requireData.color,
                          ),
                        ),
                      ),
                  for (final g in snapshot.requireData.groups ?? <Group>[])
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
                            color: g.color ?? snapshot.requireData.color,
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
