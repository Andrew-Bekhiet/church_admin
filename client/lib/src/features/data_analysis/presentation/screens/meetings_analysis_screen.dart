import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeetingsAnalysisScreen extends StatefulWidget {
  final String title;
  final DateTimeRangePreset initialRangePreset;
  final MeetingsAnalysisSubject subject;

  const MeetingsAnalysisScreen({
    required this.title,
    required this.initialRangePreset,
    required this.subject,
    super.key,
  });

  @override
  State<MeetingsAnalysisScreen> createState() => _MeetingsAnalysisScreenState();
}

class _MeetingsAnalysisScreenState extends State<MeetingsAnalysisScreen> {
  late DateTimeRangePreset _rangePreset = widget.initialRangePreset;

  late AttendanceGranularity _granularity =
      AttendanceGranularity.bestForDuration(
        _rangePreset.duration,
      );

  DateTimeRange get _range => _rangePreset.range;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return BlocProvider(
      create: (_) => MeetingsAnalysisCubit(
        subject: widget.subject,
        initialRange: _range,
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Builder(
                builder: (context) => AttendanceRangeSelectorTile(
                  preset: _rangePreset,
                  onChanged: (preset) => _applyPreset(context, preset),
                ),
              ),
              if (!_range.isSingleDay)
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 16,
                    end: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    spacing: 8,
                    children: [
                      Text(
                        'تقسيم البيانات:',
                        style: textTheme.titleMedium,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 8,
                            children: [
                              for (final g in AttendanceGranularity.values)
                                ChoiceChip(
                                  shape: const StadiumBorder(),
                                  label: Text(g.label),
                                  selected: _granularity == g,
                                  onSelected: (_) =>
                                      setState(() => _granularity = g),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              const Divider(height: 16),
              BlocBuilder<MeetingsAnalysisCubit, MeetingsAnalysisState>(
                builder: (context, state) => switch (state) {
                  MeetingsAnalysisLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  MeetingsAnalysisError(:final error) => Center(
                    child: Column(
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('تعذر تحميل الاحصائيات: $error'),
                        OutlinedButton.icon(
                          onPressed: () => unawaited(
                            context.read<MeetingsAnalysisCubit>().load(_range),
                          ),
                          icon: const Icon(Icons.refresh),
                          label: const Text('إعادة المحاولة'),
                        ),
                      ],
                    ),
                  ),
                  MeetingsAnalysisLoaded(
                    :final SingleDayMeetingsAttendanceAnalysis analysis,
                  ) =>
                    SingleDayAttendanceView(analysis: analysis),
                  MeetingsAnalysisLoaded(:final analysis) =>
                    MeetingsAttendanceView(
                      analysis: analysis,
                      granularity: _granularity,
                    ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _applyPreset(BuildContext context, DateTimeRangePreset preset) {
    setState(() {
      _rangePreset = preset;
      _granularity = AttendanceGranularity.bestForDuration(
        _rangePreset.duration,
      );
    });

    unawaited(context.read<MeetingsAnalysisCubit>().load(preset.range));
  }
}
