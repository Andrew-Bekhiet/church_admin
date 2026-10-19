import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/queries.graphql.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';

class _MembershipSorts extends RecursiveVisitor {
  static const _memberships = {
    'serviceMemberships',
    'classMemberships',
    'groupMemberships',
  };

  final Map<String, Set<String?>> firstSortFieldsByMembership = {};

  @override
  void visitFieldNode(FieldNode node) {
    final membership = node.name.value;
    if (_memberships.contains(membership)) {
      final sort = node.arguments
          .firstWhereOrNull((argument) => argument.name.value == 'sort')
          ?.value;
      final firstSortField = switch (sort) {
        ListValueNode(values: [ObjectValueNode(:final fields), ...]) =>
          switch (fields
              .firstWhereOrNull((field) => field.name.value == 'field')
              ?.value) {
            EnumValueNode(:final name) => name.value,
            _ => null,
          },
        _ => null,
      };
      (firstSortFieldsByMembership[membership] ??= {}).add(firstSortField);
    }
    super.visitFieldNode(node);
  }

  static Map<String, Set<String?>> of(DocumentNode document) {
    final sorts = _MembershipSorts();
    document.accept(sorts);

    return sorts.firstSortFieldsByMembership;
  }
}

void main() {
  const byName = {
    'serviceMemberships': {'SERVICE_NAME'},
    'classMemberships': {'CLASS_NAME'},
    'groupMemberships': {'GROUP_NAME'},
  };

  test('person details ask for the memberships sorted by name', () {
    expect(_MembershipSorts.of(documentNodeQueryperson), byName);
  });

  test("all of a person's memberships come sorted by name", () {
    expect(_MembershipSorts.of(documentNodeQuerypersonMemberships), byName);
  });
}
