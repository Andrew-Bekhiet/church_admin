import 'package:church_admin/src/core/services/database/gql_definintions/gql/__generated__/fragments.gql.dart';
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

  factory KodasRecord.fromFragment(Fragment_KodasDayRecord fragment) =>
      KodasRecord(
        id: fragment.id.uuid,
        personId: fragment.personId.uuid,
        day: fragment.dayId,
      );
}
