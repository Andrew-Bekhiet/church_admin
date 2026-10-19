import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

/// The Ash list arguments a DAO derives from the feature's parameters:
/// `filter` and `sort` already in Ash's input shape, plus any other
/// variables of the list document.
@immutable
class ListQueryArguments {
  final Json? filter;
  final List<Json>? sort;
  final Json otherVariables;

  const ListQueryArguments({
    this.otherVariables = const {},
    this.filter,
    this.sort,
  });

  Json toVariables() => {
    ...otherVariables,
    'filter': ?filter,
    'sort': ?sort,
  };
}

typedef ListQueryArgumentsBuilder<T> = ListQueryArguments Function(
  StreamableDAOParameters<T>? parameters,
);
