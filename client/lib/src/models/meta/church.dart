// ignore_for_file: invalid_annotation_target

import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'church.freezed.dart';
part 'church.g.dart';

@freezed
class Church extends ViewableWithID with _$Church {
  factory Church({
    required String id,
    required String name,
  }) = _Church;
  Church._();

  factory Church.fromJson(Map<String, Object?> json) => _$ChurchFromJson(json);
}
