// ignore_for_file: invalid_annotation_target

import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job extends ViewableWithID with _$Job {
  factory Job({
    required String id,
    required String name,
  }) = _Job;
  Job._();

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}
