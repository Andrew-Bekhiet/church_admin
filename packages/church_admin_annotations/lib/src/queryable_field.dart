import 'package:meta/meta_meta.dart';

/// Makes a field or getter of a `Queryable` class filterable and orderable.
///
/// Fields without it are left out. Operators follow the field's type; a list
/// is filtered by its element type and cannot be ordered.
@Target({TargetKind.field, TargetKind.getter})
final class QueryableField {
  /// Shown to users. `null` falls back to the field name, or for
  /// [QueryableField.manyToMany] to the label of the target field.
  final String? label;

  /// The GraphQL field name when it differs from the Dart name.
  final String? graphqlName;

  /// Hidden from the filter and order-by UI, available to code.
  final bool codeOnly;

  final bool orderable;

  /// Typed as the enclosing class, so filtering picks objects of that class.
  final bool representsParent;

  final bool usesBirthdayOperators;

  /// The metadata type when it differs from the declared type.
  final Type? type;

  /// The relationship class a many-to-many field is joined through.
  final Type? through;

  /// The [through] class's field that points at the target; defaults to the
  /// target type's name in lower case.
  final String? select;

  const QueryableField({
    required String this.label,
    this.codeOnly = false,
    this.orderable = true,
    this.graphqlName,
  }) : representsParent = false,
       usesBirthdayOperators = false,
       type = null,
       through = null,
       select = null;

  /// The object's own id.
  const QueryableField.self({String this.label = '='})
    : graphqlName = null,
      codeOnly = false,
      orderable = true,
      representsParent = true,
      usesBirthdayOperators = false,
      type = null,
      through = null,
      select = null;

  /// The latest entry of a history, which cannot be ordered.
  const QueryableField.history({required String this.label})
    : graphqlName = null,
      codeOnly = false,
      orderable = false,
      representsParent = false,
      usesBirthdayOperators = false,
      type = null,
      through = null,
      select = null;

  /// An aggregate over a relationship, available to code only and labelled
  /// with the field name.
  const QueryableField.aggregate({this.type})
    : label = null,
      graphqlName = null,
      codeOnly = true,
      orderable = true,
      representsParent = false,
      usesBirthdayOperators = false,
      through = null,
      select = null;

  /// A day and month, filtered regardless of the year.
  const QueryableField.birthday({required String this.label})
    : graphqlName = null,
      codeOnly = false,
      orderable = true,
      representsParent = false,
      usesBirthdayOperators = true,
      type = null,
      through = null,
      select = null;

  const QueryableField.manyToMany({
    required Type this.through,
    this.label,
    this.select,
  }) : graphqlName = null,
       codeOnly = false,
       orderable = false,
       representsParent = false,
       usesBirthdayOperators = false,
       type = null;
}
