import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AttendanceAnalysisContent extends StatelessWidget {
  final String? personId;
  final List<Meeting> meetings;
  final DateTimeRangePreset preset;
  final PersonAnalysisOptions options;
  final List<PersonAnalysisSection> sections;
  final int refreshTick;
  final AnalysisBodyBuilder bodyBuilder;
  final ValueChanged<DateTimeRangePreset> onPresetChanged;
  final void Function(PersonAnalysisSection section, bool enabled)
  onToggleSection;
  final ValueChanged<List<Meeting>> onMeetingsChanged;

  const AttendanceAnalysisContent({
    required this.personId,
    required this.meetings,
    required this.preset,
    required this.options,
    required this.sections,
    required this.refreshTick,
    required this.bodyBuilder,
    required this.onPresetChanged,
    required this.onToggleSection,
    required this.onMeetingsChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AttendanceRangeSelectorTile(
              preset: preset,
              onChanged: onPresetChanged,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 8,
                children: [
                  if (personId != null)
                    MeetingsFilterChip(
                      meetings: meetings,
                      selected: options.meetings,
                      onChanged: onMeetingsChanged,
                    ),
                  for (final section in sections)
                    FilterChip(
                      shape: const StadiumBorder(),
                      label: Text(section.label),
                      selected: section.isEnabled(options),
                      onSelected: (v) => onToggleSection(section, v),
                    ),
                ],
              ),
            ),
            const Divider(height: 16),
            bodyBuilder(context, options, refreshTick),
          ],
        ),
      ),
    );
  }
}
