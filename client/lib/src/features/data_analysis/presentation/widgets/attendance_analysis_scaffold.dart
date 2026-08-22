import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

typedef AnalysisBodyBuilder =
    Widget Function(
      BuildContext context,
      PersonAnalysisOptions options,
      int refreshTick,
    );

class AttendanceAnalysisScaffold extends StatefulWidget {
  final String title;
  final String? personId;
  final bool? asServant;
  final DateTimeRangePreset initialRangePreset;
  final PersonAnalysisOptions? initialOptions;
  final List<PersonAnalysisSection> sections;
  final AnalysisBodyBuilder bodyBuilder;

  const AttendanceAnalysisScaffold({
    required this.title,
    required this.initialRangePreset,
    required this.sections,
    required this.bodyBuilder,
    this.initialOptions,
    this.personId,
    this.asServant,
    super.key,
  });

  @override
  State<AttendanceAnalysisScaffold> createState() =>
      _AttendanceAnalysisScaffoldState();
}

class _AttendanceAnalysisScaffoldState
    extends State<AttendanceAnalysisScaffold> {
  late DateTimeRangePreset _preset = widget.initialRangePreset;
  late PersonAnalysisOptions _options =
      widget.initialOptions?.copyWith(
        dateRange: widget.initialRangePreset.range,
      ) ??
      PersonAnalysisOptions(dateRange: widget.initialRangePreset.range);

  int _refreshTick = 0;

  bool _seededMeetings = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => setState(() => _refreshTick++),
            icon: const Icon(Symbols.refresh),
            tooltip: 'تحديث البيانات',
          ),
        ],
      ),
      body: switch (widget.personId) {
        null => AttendanceAnalysisContent(
          personId: null,
          meetings: const [],
          preset: _preset,
          options: _options,
          sections: widget.sections,
          refreshTick: _refreshTick,
          bodyBuilder: widget.bodyBuilder,
          onPresetChanged: _applyPreset,
          onToggleSection: _toggleSection,
          onMeetingsChanged: _applyMeetings,
        ),
        final String personId => BlocProvider(
          create: (_) => PersonMeetingsCubit(
            personId: personId,
            asServant: widget.asServant,
          ),
          child: BlocConsumer<PersonMeetingsCubit, PersonMeetingsState>(
            listener: (context, state) {
              if (state is! PersonMeetingsLoaded) return;

              _seedMeetings(state.meetings);
            },
            builder: (context, state) => switch (state) {
              PersonMeetingsLoading() => const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(child: CircularProgressIndicator()),
              ),
              PersonMeetingsError(:final error) => AttendanceAnalysisErrorView(
                error: error,
                onRetry: () => context.read<PersonMeetingsCubit>().load(),
              ),
              PersonMeetingsLoaded(:final meetings) =>
                AttendanceAnalysisContent(
                  personId: personId,
                  meetings: meetings,
                  preset: _preset,
                  options: _options,
                  sections: widget.sections,
                  refreshTick: _refreshTick,
                  bodyBuilder: widget.bodyBuilder,
                  onPresetChanged: _applyPreset,
                  onToggleSection: _toggleSection,
                  onMeetingsChanged: _applyMeetings,
                ),
            },
          ),
        ),
      },
    );
  }

  void _applyPreset(DateTimeRangePreset preset) {
    setState(() {
      _preset = preset;
      _options = _options.copyWith(dateRange: preset.range);
    });
  }

  void _toggleSection(PersonAnalysisSection section, bool enabled) {
    setState(() => _options = section.apply(_options, enabled));
  }

  void _applyMeetings(List<Meeting> meetings) {
    setState(() => _options = _options.copyWith(meetings: meetings));
  }

  void _seedMeetings(List<Meeting> meetings) {
    if (_seededMeetings) return;
    setState(() {
      _seededMeetings = true;
      _options = _options.copyWith(meetings: meetings);
    });
  }
}
