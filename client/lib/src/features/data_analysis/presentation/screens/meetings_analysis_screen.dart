import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

typedef MeetingsAnalysisLoader =
    Future<MeetingsAttendanceAnalysis> Function(DateTimeRange range);

class MeetingsAnalysisScreen extends StatefulWidget {
  final String title;
  final DateTimeRangePreset initialRangePreset;
  final MeetingsAnalysisLoader load;

  const MeetingsAnalysisScreen({
    required this.title,
    required this.initialRangePreset,
    required this.load,
    super.key,
  });

  @override
  State<MeetingsAnalysisScreen> createState() => _MeetingsAnalysisScreenState();
}

class _MeetingsAnalysisScreenState extends State<MeetingsAnalysisScreen> {
  late DateTimeRangePreset _rangePreset = widget.initialRangePreset;

  late Future<MeetingsAttendanceAnalysis> _dataFuture = widget.load(
    _rangePreset.range,
  );
  late AttendanceGranularity _granularity =
      AttendanceGranularity.bestForDuration(
        _rangePreset.duration,
      );

  DateTimeRange get _range => _rangePreset.range;

  void _applyPreset(DateTimeRangePreset preset) {
    setState(() {
      _rangePreset = preset;
      _granularity = AttendanceGranularity.bestForDuration(
        _rangePreset.duration,
      );
      _dataFuture = widget.load(_rangePreset.range);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        // Temporary until a wider design pass: tones down the chart's
        // headlineSmall (Hacen Algeria) to match the Cairo section headers.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AttendanceRangeSelectorTile(
              preset: _rangePreset,
              onChanged: _applyPreset,
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
            FutureBuilder<MeetingsAttendanceAnalysis>(
              future: _dataFuture,
              builder: (context, snapshot) {
                final analysisData = snapshot.data;
                if (snapshot.hasError) {
                  return Center(
                    child: Column(
                      spacing: 8,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('تعذر تحميل الاحصائيات: ${snapshot.error}'),
                        OutlinedButton.icon(
                          onPressed: () => _applyPreset(
                            CustomDateTimeRangePreset(range: _range),
                          ),
                          icon: const Icon(Icons.refresh),
                          label: const Text('إعادة المحاولة'),
                        ),
                      ],
                    ),
                  );
                }

                if (analysisData == null) {
                  return const Center(child: CircularProgressIndicator());
                }

                return MeetingsAttendanceView(
                  analysis: analysisData,
                  granularity: _granularity,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
