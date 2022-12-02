import 'package:freezed_annotation/freezed_annotation.dart';

part 'aggregate_data.freezed.dart';
part 'aggregate_data.g.dart';

@Freezed(genericArgumentFactories: true)
class AggregateData<T> with _$AggregateData<T> {
  factory AggregateData({int? count, T? max}) = _AggregateData<T>;

  factory AggregateData.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$AggregateDataFromJson<T>(json, fromJsonT);
}
