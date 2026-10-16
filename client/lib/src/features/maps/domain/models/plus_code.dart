import 'dart:math';

import 'package:church_admin/church_admin.dart';

sealed class PlusCode {
  static const String _alphabet = '23456789CFGHJMPQRVWX';
  static const String _separator = '+';
  static const String _padding = '0';
  static const int _separatorPosition = 8;
  static const int _longestPadding = 6;
  static const int _encodingBase = 20;
  static const int _latitudeSpan = 180;
  static const int _longitudeSpan = 360;
  static const int _pairCodeLength = 10;
  static const int _maxDigitCount = 15;
  static const int _gridRows = 5;
  static const int _gridColumns = 4;

  static PlusCode? tryParse(String text) {
    final code = text.toUpperCase();
    if (!_isValid(code)) return null;

    if (code.indexOf(_separator) < _separatorPosition) {
      return ShortPlusCode._(code);
    }

    return _startsInsideTheGlobe(code) ? FullPlusCode._decode(code) : null;
  }

  static bool _isValid(String code) {
    final separatorIndex = code.indexOf(_separator);
    final hasOneSeparatorAtAPairBoundary =
        separatorIndex != -1 &&
        separatorIndex == code.lastIndexOf(_separator) &&
        separatorIndex <= _separatorPosition &&
        separatorIndex.isEven;
    final hasSingleDigitAfterSeparator = code.length - separatorIndex - 1 == 1;

    return code.length > 1 &&
        hasOneSeparatorAtAPairBoundary &&
        !hasSingleDigitAfterSeparator &&
        (!code.contains(_padding) || _isValidlyPadded(code, separatorIndex)) &&
        code
            .split('')
            .every(
              (character) =>
                  character == _separator ||
                  character == _padding ||
                  _alphabet.contains(character),
            );
  }

  static bool _isValidlyPadded(String code, int separatorIndex) {
    final paddingStart = code.indexOf(_padding);
    final paddingEnd = code.lastIndexOf(_padding) + 1;
    final paddingLength = paddingEnd - paddingStart;

    return separatorIndex == _separatorPosition &&
        paddingStart > 0 &&
        paddingLength.isEven &&
        paddingLength <= _longestPadding &&
        code.substring(paddingStart, paddingEnd) == _padding * paddingLength &&
        code.endsWith(_separator);
  }

  static bool _startsInsideTheGlobe(String code) =>
      _alphabet.indexOf(code[0]) * _encodingBase < _latitudeSpan &&
      _alphabet.indexOf(code[1]) * _encodingBase < _longitudeSpan;

  final String code;

  const PlusCode._(this.code);

  Point locationNearest(Point reference);
}

class FullPlusCode extends PlusCode {
  static const int _pairPrecision = 8000;
  static const int _pairFirstPlaceValue = 160000;
  static const int _gridLatitudeFirstPlaceValue = 625;
  static const int _gridLongitudeFirstPlaceValue = 256;
  static const int _gridLatitudePrecision = 25000000;
  static const int _gridLongitudePrecision = 8192000;

  final Point southWest;
  final Point northEast;
  final Point center;

  const FullPlusCode._(
    super.code, {
    required this.southWest,
    required this.northEast,
    required this.center,
  }) : super._();

  factory FullPlusCode._decode(String code) {
    final digits = code
        .replaceAll(PlusCode._separator, '')
        .replaceAll(PlusCode._padding, '')
        .split('')
        .take(PlusCode._maxDigitCount)
        .map(PlusCode._alphabet.indexOf)
        .toList();
    final pairDigitCount = min(digits.length, PlusCode._pairCodeLength);

    var pairLatitude = -PlusCode._latitudeSpan ~/ 2 * _pairPrecision;
    var pairLongitude = -PlusCode._longitudeSpan ~/ 2 * _pairPrecision;
    var pairPlaceValue = _pairFirstPlaceValue;
    for (var index = 0; index < pairDigitCount; index += 2) {
      pairLatitude += digits[index] * pairPlaceValue;
      pairLongitude += digits[index + 1] * pairPlaceValue;
      if (index < pairDigitCount - 2) pairPlaceValue ~/= PlusCode._encodingBase;
    }

    var latitudeHeight = pairPlaceValue / _pairPrecision;
    var longitudeWidth = pairPlaceValue / _pairPrecision;
    var gridLatitude = 0;
    var gridLongitude = 0;
    var rowPlaceValue = _gridLatitudeFirstPlaceValue;
    var columnPlaceValue = _gridLongitudeFirstPlaceValue;
    for (var index = PlusCode._pairCodeLength; index < digits.length; index++) {
      gridLatitude += digits[index] ~/ PlusCode._gridColumns * rowPlaceValue;
      gridLongitude += digits[index] % PlusCode._gridColumns * columnPlaceValue;
      latitudeHeight = rowPlaceValue / _gridLatitudePrecision;
      longitudeWidth = columnPlaceValue / _gridLongitudePrecision;
      rowPlaceValue ~/= PlusCode._gridRows;
      columnPlaceValue ~/= PlusCode._gridColumns;
    }

    final south =
        pairLatitude / _pairPrecision + gridLatitude / _gridLatitudePrecision;
    final west =
        pairLongitude / _pairPrecision +
        gridLongitude / _gridLongitudePrecision;

    return FullPlusCode._(
      code,
      southWest: Point(south, west),
      northEast: Point(south + latitudeHeight, west + longitudeWidth),
      center: Point(south + latitudeHeight / 2, west + longitudeWidth / 2),
    );
  }

  @override
  Point locationNearest(Point reference) => center;
}

class ShortPlusCode extends PlusCode {
  const ShortPlusCode._(super.code) : super._();

  @override
  Point locationNearest(Point reference) {
    final missingDigitCount =
        PlusCode._separatorPosition - code.indexOf(PlusCode._separator);
    final resolution = pow(
      PlusCode._encodingBase,
      2 - missingDigitCount / 2,
    ).toDouble();
    final referenceLatitude = reference.latitude.clamp(
      -PlusCode._latitudeSpan / 2,
      PlusCode._latitudeSpan / 2,
    );
    final referenceLongitude = _normalizedLongitude(reference.longitude);
    final candidate = FullPlusCode._decode(
      _pairDigitsOf(referenceLatitude, referenceLongitude, missingDigitCount) +
          code,
    ).center;

    final latitude = switch (candidate.latitude) {
      final latitude
          when referenceLatitude + resolution / 2 < latitude &&
              latitude - resolution >= -PlusCode._latitudeSpan / 2 =>
        latitude - resolution,
      final latitude
          when referenceLatitude - resolution / 2 > latitude &&
              latitude + resolution <= PlusCode._latitudeSpan / 2 =>
        latitude + resolution,
      final latitude => latitude,
    };
    final longitude = switch (candidate.longitude) {
      final longitude when referenceLongitude + resolution / 2 < longitude =>
        longitude - resolution,
      final longitude when referenceLongitude - resolution / 2 > longitude =>
        longitude + resolution,
      final longitude => longitude,
    };

    return Point(latitude, _normalizedLongitude(longitude));
  }

  double _normalizedLongitude(double longitude) =>
      (longitude + PlusCode._longitudeSpan / 2) % PlusCode._longitudeSpan -
      PlusCode._longitudeSpan / 2;

  String _pairDigitsOf(double latitude, double longitude, int digitCount) {
    final latitudeValue = min(
      ((latitude + PlusCode._latitudeSpan / 2) * FullPlusCode._pairPrecision)
          .floor(),
      PlusCode._latitudeSpan * FullPlusCode._pairPrecision - 1,
    );
    final longitudeValue =
        ((longitude + PlusCode._longitudeSpan / 2) *
                FullPlusCode._pairPrecision)
            .floor();

    return [
      for (
        var placeValue = FullPlusCode._pairFirstPlaceValue;
        placeValue >
            FullPlusCode._pairFirstPlaceValue ~/
                pow(PlusCode._encodingBase, digitCount ~/ 2);
        placeValue ~/= PlusCode._encodingBase
      ) ...[
        PlusCode._alphabet[latitudeValue ~/
            placeValue %
            PlusCode._encodingBase],
        PlusCode._alphabet[longitudeValue ~/
            placeValue %
            PlusCode._encodingBase],
      ],
    ].join();
  }
}
