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
}
