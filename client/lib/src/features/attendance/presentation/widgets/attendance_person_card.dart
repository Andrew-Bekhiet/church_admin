import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A single roster row: photo, name, recorded attendance time and a one-tap
/// present/absent toggle. Tapping toggles attendance; long-pressing opens the
/// person's details.
class AttendancePersonCard extends StatelessWidget {
  static const double _cardVerticalMargin = 1.5;
  static const double _cardVerticalPadding = 6;

  /// Fixed height of a person card, used both for layout and the gutter's
  /// jump-to-index math.
  static const double kCardExtent = 63;

  final MeetingRosterEntry entry;
  final ValueChanged<MeetingRosterEntry> onToggle;
  final bool removeEndPadding;

  const AttendancePersonCard({
    required this.entry,
    required this.onToggle,
    this.removeEndPadding = false,
    super.key,
  });

  void _openDetails(BuildContext context) =>
      ViewPersonRoute(id: entry.person.id, $extra: entry.person).push(context);

  @override
  Widget build(BuildContext context) {
    final present = entry.attended;
    final attendanceTime = present ? entry.attendance?.datetime : null;

    const minTileHeight =
        kCardExtent - _cardVerticalMargin * 2 - _cardVerticalPadding * 2;

    return Card(
      margin: const EdgeInsetsDirectional.symmetric(
        horizontal: 8,
        vertical: _cardVerticalMargin,
      ).copyWith(end: removeEndPadding ? 0 : null),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: ColorScheme.of(context).surfaceContainerLow,
      child: ListTile(
        minTileHeight: minTileHeight,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: _cardVerticalPadding,
        ),
        onTap: () => onToggle(entry),
        onLongPress: () => _openDetails(context),
        leading: ImageObjectWidget(entry.person, size: 44),
        title: Row(
          children: [
            Expanded(
              child: Text(
                entry.person.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (attendanceTime != null)
              Text(
                DateFormat.jm('ar').format(attendanceTime),
              ),
          ],
        ),
        trailing: AttendancePersonToggle(
          isPresent: present,
          onTap: () => onToggle(entry),
        ),
      ),
    );
  }
}
