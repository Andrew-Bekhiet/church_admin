import 'package:equatable/equatable.dart';

class HomeDailySneksar extends Equatable {
  static final RegExp _blankLine = RegExp(r'\n[ \t]*\n');
  static final RegExp _numberedItemPrefix = RegExp(r'^\s*\d+\s*-\s*');

  final String? date;
  final List<String> commemorations;

  @override
  List<Object?> get props => [date, commemorations];

  const HomeDailySneksar({required this.commemorations, this.date});

  factory HomeDailySneksar.parse(String rawText) {
    final trimmedText = rawText.trim();
    final dateEnd = trimmedText.indexOf(_blankLine);
    final hasDate = dateEnd != -1;

    final commemorationsText = hasDate
        ? trimmedText.substring(dateEnd)
        : trimmedText;
    final commemorations = <String>[];

    for (final line in commemorationsText.split('\n')) {
      final trimmedLine = line.trim();
      if (trimmedLine.isEmpty) continue;

      if (_numberedItemPrefix.hasMatch(trimmedLine)) {
        commemorations.add(trimmedLine.replaceFirst(_numberedItemPrefix, ''));
      } else if (commemorations.isEmpty) {
        commemorations.add(trimmedLine);
      } else {
        commemorations.last = '${commemorations.last} $trimmedLine';
      }
    }

    return HomeDailySneksar(
      date: hasDate ? trimmedText.substring(0, dateEnd).trim() : null,
      commemorations: commemorations,
    );
  }
}
