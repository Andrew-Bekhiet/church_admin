class AshNaming {
  static final RegExp _wordBoundary = RegExp('([a-z0-9])([A-Z])');

  static String screamingSnake(String camelCase) => camelCase
      .replaceAllMapped(_wordBoundary, (match) => '${match[1]}_${match[2]}')
      .toUpperCase();

  static String camelJoin(List<String> words) => [
    words.first,
    for (final word in words.skip(1))
      '${word[0].toUpperCase()}${word.substring(1)}',
  ].join();

  /// `lastEdit` is the scalar time, `latestEdit` the relationship to the
  /// record that holds it.
  static String latestRelationship(String lastScalar) =>
      'latest${lastScalar.substring('last'.length)}';

  const AshNaming._();
}
