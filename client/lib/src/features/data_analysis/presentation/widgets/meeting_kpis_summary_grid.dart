import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class MeetingKpisSummaryGrid extends StatelessWidget {
  final int heldCount;
  final double averageAttendance;
  final MeetingDay? peak;
  final AttendanceGranularity granularity;
  final DateTime? latestDay;

  const MeetingKpisSummaryGrid({
    required this.heldCount,
    required this.averageAttendance,
    required this.peak,
    required this.granularity,
    required this.latestDay,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final latest = latestDay;
    final peak = this.peak;

    return AttendanceKpiGrid(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        AttendanceKpiTile(
          icon: const Icon(Symbols.groups),
          label: 'متوسط الحضور',
          value: averageAttendance.toStringAsFixed(1),
          emphasized: true,
        ),
        AttendanceKpiTile(
          icon: const Icon(Symbols.trending_up),
          label: 'أعلى حضور (${granularity.label})',
          value: peak?.totalCount.toString() ?? '—',
          caption: switch (granularity) {
            _ when peak == null => null,
            AttendanceGranularity.month => DateFormat.yMMM(
              'ar',
            ).format(peak.day),
            AttendanceGranularity.week ||
            AttendanceGranularity.day => DateFormat.yMMMd(
              'ar',
            ).format(peak.day),
          },
        ),
        AttendanceKpiTile(
          icon: const Icon(Symbols.event_available),
          label: 'عدد مرات الانعقاد',
          value: heldCount.toString(),
        ),
        AttendanceKpiTile(
          icon: const Icon(Symbols.event),
          label: 'آخر انعقاد',
          value: latest == null ? '—' : DateFormat.yMMMd('ar').format(latest),
        ),
      ],
    );
  }
}
