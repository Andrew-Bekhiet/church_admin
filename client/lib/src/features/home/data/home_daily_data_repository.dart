import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

const kCopticMonthsNames = [
  'توت',
  'بابه',
  'هاتور',
  'كيهك',
  'طوبه',
  'أمشير',
  'برمهات',
  'بشنس',
  'بؤونه',
  'أبيب',
  'مسرى',
  'باؤونه',
  'نسيئ',
];

class HomeDailyDataRepository {
  static HomeDailyDataRepository get I =>
      globalProviderContainer.read(homeDailyDataRepositoryProvider);

  final Clock _clock;
  final Box<Map> _currentIndexes;

  /// Coptic calendar data, indexed by month, then day
  final List<List<String>> _sneksarData;
  final List<String> _versesData;
  final List<String> _sayingData;

  const HomeDailyDataRepository({
    required List<List<String>> sneksarData,
    required List<String> sayingData,
    required Box<Map> currentIndexes,
    required List<String> versesData,
    Clock? clock,
  })  : _sneksarData = sneksarData,
        _versesData = versesData,
        _sayingData = sayingData,
        _currentIndexes = currentIndexes,
        _clock = clock ?? const Clock();

  String getVerse({bool forceRefresh = false}) {
    return _versesData[
            _getOrGenerateRandomFor(HomeDailyDataType.verse, forceRefresh)]
        .trim();
  }

  String getSaying({bool forceRefresh = false}) {
    return _sayingData[
            _getOrGenerateRandomFor(HomeDailyDataType.saying, forceRefresh)]
        .trim();
  }

  String getTodaysSneksar() {
    final (:day, :month, year: _) = _clock.now().toCopticDate();

    final sneksarText = _sneksarData[month - 1][day - 1].trim();

    final headerText = _getSneksarHeader();

    return '$headerText\n\n$sneksarText';
  }

  String _getSneksarHeader() {
    final now = _clock.now();
    final (:day, :month, :year) = now.toCopticDate();

    final numberFormat = NumberFormat('#', 'ar_EG');

    return '${numberFormat.format(day)}'
        ' '
        '${kCopticMonthsNames[month - 1]}'
        ' '
        '${numberFormat.format(year)}'
        ' - '
        '${DateFormat('d MMMM yyyy', 'ar-EG').format(now)}';
  }

  int _getOrGenerateRandomFor(HomeDailyDataType type, bool forceRefresh) {
    return _maybeGenerateIndexes(forceRefresh ? type : null)[type.name] as int;
  }

  Map _maybeGenerateIndexes([HomeDailyDataType? forceRefreshType]) {
    final now = _clock.now();
    final isoDate = now.toIso8601String().split('T').first;

    Map? data = _currentIndexes.get(isoDate);

    if (data != null && forceRefreshType == null) {
      return data;
    }

    final random = Random();

    _versesData.max;
    final verseIndex = random.nextInt(_versesData.length);
    final sayingIndex = random.nextInt(_sayingData.length);

    data = {
      ...?data,
      if (forceRefreshType == null ||
          forceRefreshType == HomeDailyDataType.verse)
        HomeDailyDataType.verse.name: verseIndex,
      if (forceRefreshType == null ||
          forceRefreshType == HomeDailyDataType.saying)
        HomeDailyDataType.saying.name: sayingIndex,
    };

    _currentIndexes.put(isoDate, data);

    return data;
  }
}
