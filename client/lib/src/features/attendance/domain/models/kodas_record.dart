import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

final class KodasRecord with Equatable {
  final String id;
  final String personId;
  final DateTime day;

  @override
  List<Object?> get props => [id, personId, day];

  const KodasRecord({
    required this.id,
    required this.personId,
    required this.day,
  });

  factory KodasRecord.fromJson(Json json) => KodasRecord(
    id: json['id'] as String,
    personId: json['personId'] as String,
    day: dateFromString(json['dayId']),
  );
}
