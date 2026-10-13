import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

/// How a list is sorted and which field each item shows as its second line.
///
/// Without a chosen [secondLineField], items show the primary sort field.
class ListArrangement with Equatable {
  final List<OrderBy> orderBy;
  final FieldMetadata? secondLineField;

  FieldMetadata? get effectiveSecondLineField =>
      secondLineField ?? orderBy.firstOrNull?.getSecondLineField();

  @override
  List<Object?> get props => [orderBy, secondLineField];

  const ListArrangement({required this.orderBy, this.secondLineField});

  ListArrangement withOrderBy(List<OrderBy> orderBy) =>
      ListArrangement(orderBy: orderBy, secondLineField: secondLineField);

  ListArrangement withSecondLineField(FieldMetadata? secondLineField) =>
      ListArrangement(orderBy: orderBy, secondLineField: secondLineField);

  ListArrangement withEnabledFields() => ListArrangement(
    orderBy: orderBy.whereEnabled(),
    secondLineField: switch (secondLineField) {
      final field? when field.isEnabled => field,
      _ => null,
    },
  );
}
