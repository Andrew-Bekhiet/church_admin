import 'package:church_admin/church_admin.dart';

class AshFieldPath {
  static const String _orderingSubfieldByOrder = 'order';
  static const String _orderingSubfieldByName = 'name';
  static const Set<String> _unexpandedKeyFieldNames = {'id', 'uid'};
  static const List<String> _searchablePhone = ['searchablePhones', 'phone'];
  static const List<String> _mainPhone = ['mainPhone'];

  static List<String> _filterSegments(FieldMetadata field) => switch (field) {
    DotField() => const [],
    RedirectingFieldMetadata(:final parentField, :final targetField)
        when parentField.type == LastRecordedByInfo =>
      _recordedByInfoSegments(parentField, targetField),
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ..._filterSegments(parentField),
      ..._filterSegments(targetField),
    ],
    PhoneSearchFieldMetadata() => _searchablePhone,
    _ => [field.name],
  };

  static List<String> _sortSegments(FieldMetadata field) => switch (field) {
    DotField() => throw UnsupportedError('The dot field cannot be ordered'),
    RedirectingFieldMetadata(:final parentField, :final targetField)
        when parentField.type == LastRecordedByInfo &&
            targetField == LastRecordedByInfoFields().time =>
      [parentField.name],
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ..._filterSegments(parentField),
      ..._sortSegments(targetField),
    ],
    PhoneSearchFieldMetadata() => _mainPhone,
    FieldMetadata(:final name) when _unexpandedKeyFieldNames.contains(name) => [
      name,
    ],
    _ => [field.name, ..._orderingSubfieldSegments(field)],
  };

  // The server keeps the time of a place's last edit or visit as a scalar
  // named after the field, and the rest of the record under `latest<Kind>`.
  static List<String> _recordedByInfoSegments(
    FieldMetadata recordedField,
    FieldMetadata inner,
  ) => inner == LastRecordedByInfoFields().time
      ? [recordedField.name]
      : [
          AshNaming.latestRelationship(recordedField.name),
          ..._filterSegments(inner),
        ];

  static List<String> _orderingSubfieldSegments(FieldMetadata field) {
    final subfields = AdvancedQueriesMetadata()
        .allQueryablesByType[field.type]
        ?.fieldsMetadataByName;
    final orderingSubfield =
        subfields?[_orderingSubfieldByOrder] ??
        subfields?[_orderingSubfieldByName];

    return orderingSubfield == null
        ? const []
        : _sortSegments(orderingSubfield);
  }

  final List<String> segments;

  AshFieldPath get parent => segments.isEmpty
      ? this
      : AshFieldPath(segments.sublist(0, segments.length - 1));

  const AshFieldPath(this.segments);

  factory AshFieldPath.forFilter(FieldMetadata field) =>
      AshFieldPath(_filterSegments(field));

  factory AshFieldPath.forSort(FieldMetadata field) =>
      AshFieldPath(_sortSegments(field));

  AshFieldPath append(Iterable<String> more) =>
      AshFieldPath([...segments, ...more]);

  Json wrap(Json inner) => segments.reversed.fold<Json>(
    inner,
    (nested, segment) => {segment: nested},
  );
}
