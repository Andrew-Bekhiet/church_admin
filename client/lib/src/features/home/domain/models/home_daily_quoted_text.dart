import 'package:equatable/equatable.dart';

class HomeDailyQuotedText extends Equatable {
  final String text;
  final String? reference;

  @override
  List<Object?> get props => [text, reference];

  const HomeDailyQuotedText({required this.text, this.reference});

  factory HomeDailyQuotedText.parse(String rawText) {
    final lines = rawText.trim().split('\n');
    final lastLine = lines.last.trim();
    final lastLineIsReference =
        lines.length > 1 && lastLine.startsWith('(') && lastLine.endsWith(')');

    if (!lastLineIsReference) {
      return HomeDailyQuotedText(text: rawText.trim());
    }

    return HomeDailyQuotedText(
      text: lines.take(lines.length - 1).join('\n').trim(),
      reference: lastLine,
    );
  }
}
