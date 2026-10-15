import 'package:collection/collection.dart';

abstract final class PersonFormValues {
  static String text(String original, String edited) =>
      edited == original ? original : edited.trim();

  static String? optionalText(String? original, String edited) =>
      edited == (original ?? '') ? original : edited.trim();

  static List<T>? listOf<T>(List<T>? original, Set<T> edited) =>
      SetEquality<T>().equals(original?.toSet() ?? {}, edited)
      ? original
      : edited.toList();
}
