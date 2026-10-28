import 'package:church_admin/church_admin.dart';

sealed class CustomRangePickOutcome {
  Json get properties;

  const CustomRangePickOutcome();
}

final class CustomRangePicked extends CustomRangePickOutcome {
  final DateTimeRange range;

  @override
  Json get properties => {
    'is_cancelled': false,
    'range_duration_ms': range.duration.inMilliseconds,
  };

  const CustomRangePicked(this.range);
}

final class CustomRangePickCancelled extends CustomRangePickOutcome {
  @override
  Json get properties => const {
    'is_cancelled': true,
    'range_duration_ms': null,
  };

  const CustomRangePickCancelled();
}
