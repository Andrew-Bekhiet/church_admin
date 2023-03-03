import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test(
    'ViewableObjectListController => filterStream',
    () async {
      final filterStream = BehaviorSubject.seeded('');
      addTearDown(filterStream.close);

      final basicViewables = [
        BasicViewable(id: '1', name: 'Alice'),
        BasicViewable(id: '2', name: 'Bob'),
        BasicViewable(id: '3', name: 'Charlie'),
        BasicViewable(id: '4', name: 'David'),
        BasicViewable(id: '5', name: 'Eve'),
      ];

      final unit = _createTestUnit(filterStream.stream, basicViewables);
      addTearDown(unit.dispose);

      expect(
        unit.filteredObjectsStream,
        emitsInOrder([
          basicViewables,
          basicViewables
              .where((o) => o.name.toLowerCase().contains('a'))
              .toList(),
          basicViewables
              .where((o) => o.name.toLowerCase().contains('al'))
              .toList(),
          basicViewables
              .where((o) => o.name.toLowerCase().contains('b'))
              .toList(),
        ]),
      );

      await Future.delayed(Duration.zero);

      filterStream
        ..add('a')
        ..add('al')
        ..add('b');
    },
  );
}

ViewableObjectListController<BasicViewable> _createTestUnit(
  Stream<String> filterStream,
  List<BasicViewable> objects,
) {
  return ViewableObjectListController<BasicViewable>(
    objectsPaginatableStream: DelegatingPaginatableStream(
      streamDelegate: (_, __) => Stream.value(
        DelegatingStreamResult<BasicViewable>(
          result: objects,
          canPaginateBackward: false,
          canPaginateForward: false,
        ),
      ),
    ),
    filterStream: filterStream,
  );
}

class BasicViewable extends ViewableWithID with EquatableMixin {
  BasicViewable({
    required this.id,
    required this.name,
  });

  @override
  final String id;

  @override
  final String name;

  @override
  String toString() => name;

  @override
  List<Object?> get props => [id, name];
}
