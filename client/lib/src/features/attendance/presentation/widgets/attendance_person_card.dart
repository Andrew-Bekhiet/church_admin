import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:material_ui/material_ui.dart';

class AttendancePersonCard extends StatelessWidget {
  static const int _staleWeeks = 3;

  static const double _cardVerticalMargin = 1.5;
  static const double _cardVerticalPadding = 6;

  static const double kCardExtent = 78;

  final MeetingRosterEntry entry;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final ValueChanged<TimeOfDay> onChangeAttendanceTime;
  final bool removeEndPadding;

  const AttendancePersonCard({
    required this.entry,
    required this.onToggle,
    required this.onChangeAttendanceTime,
    this.removeEndPadding = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final present = entry.attended;
    final attendanceTime = present ? entry.attendance?.datetime : null;
    final recordsKodas = context.select<RecordKodasCubit, bool>(
      (cubit) => cubit.state.isVisible,
    );

    const minTileHeight =
        kCardExtent - _cardVerticalMargin * 2 - _cardVerticalPadding * 2;

    return Card(
      margin: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: _cardVerticalMargin,
      ).copyWith(end: removeEndPadding ? 0 : null),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      child: ListTile(
        minTileHeight: minTileHeight,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: _cardVerticalPadding,
        ),
        onTap: () => _toggle(context),
        onLongPress: () => _openDetails(context),
        leading: ImageObjectWidget(entry.person, size: 44),
        horizontalTitleGap: 10,
        title: Text(
          entry.person.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: AttendancePersonTrackRecordLine(
          analysis: entry.personAttendanceAnalysis,
          staleWeeks: _staleWeeks,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (recordsKodas) AttendanceKodasToggle(person: entry.person),
            AttendanceLabelledToggle(
              selected: present,
              label: switch (attendanceTime) {
                final time? => DateFormat.jm('ar').format(time),
                null => 'حضور',
              },
              semanticsLabel: 'حضور ${entry.person.name}',
              icon: const AttendanceCheckIcon(),
              fillColor: colorScheme.inverseSurface,
              iconColor: colorScheme.onInverseSurface,
              selectedLabelColor: colorScheme.onSurface,
              onTap: () => _toggle(context),
              onLongPress: present
                  ? () => _changeAttendanceTime(context)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  void _toggle(BuildContext context) {
    onToggle(entry);
    const AttendanceMarkedNotification().dispatch(context);
  }

  void _openDetails(BuildContext context) =>
      ViewPersonRoute(id: entry.person.id, $extra: entry.person).push(context);

  Future<void> _changeAttendanceTime(BuildContext context) async {
    final attendanceDateTime = entry.attendance?.datetime;
    if (attendanceDateTime == null) return;

    final result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(attendanceDateTime),
    );
    if (result == null) return;

    onChangeAttendanceTime(result);
  }
}
