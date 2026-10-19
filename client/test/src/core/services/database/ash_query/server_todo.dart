import 'package:flutter_test/flutter_test.dart';

class ServerTodo {
  final String title;
  final Map<String, Set<String>> _neededBy = {};

  ServerTodo(this.title);

  void add(String missingPiece, String neededBy) {
    _neededBy.putIfAbsent(missingPiece, () => {}).add(neededBy);
  }

  void addAll(Iterable<String> missingPieces, String neededBy) {
    for (final piece in missingPieces) {
      add(piece, neededBy);
    }
  }

  void failIfAny() {
    if (_neededBy.isEmpty) return;

    final pieces = _neededBy.keys.toList()..sort();
    final lines = pieces.map((piece) {
      final neededBy = _neededBy[piece]!.toList()..sort();
      final shown = neededBy.take(3).join(', ');
      final more = neededBy.length > 3 ? ' (+${neededBy.length - 3} more)' : '';

      return '  - $piece   <- $shown$more';
    });

    fail('$title: ${pieces.length} missing\n${lines.join('\n')}');
  }
}
