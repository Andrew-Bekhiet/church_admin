class AshNaming {
  static const Map<String, String> _latestRelationshipOfDayOrMoment = {
    'lastConfessionDay': 'latestConfession',
    'lastKodasDay': 'latestKodas',
    'lastVisitAt': 'latestVisit',
  };

  static final RegExp _wordBoundary = RegExp('([a-z0-9])([A-Z])');

  static String screamingSnake(String camelCase) => camelCase
      .replaceAllMapped(_wordBoundary, (match) => '${match[1]}_${match[2]}')
      .toUpperCase();

  static String camelJoin(List<String> words) => [
    words.first,
    for (final word in words.skip(1))
      '${word[0].toUpperCase()}${word.substring(1)}',
  ].join();

  /// A recorded-by field named `last…` is the scalar time of the latest
  /// record; any other one is the list of records.
  static bool namesLatestScalar(String name) => name.startsWith('last');

  /// `lastEdit` is the scalar time, `latestEdit` the relationship to the
  /// record that holds it; a person's `lastConfessionDay` belongs to
  /// `latestConfession`.
  static String latestRelationship(String lastScalar) =>
      _latestRelationshipOfDayOrMoment[lastScalar] ??
      'latest${lastScalar.substring('last'.length)}';

  const AshNaming._();
}
