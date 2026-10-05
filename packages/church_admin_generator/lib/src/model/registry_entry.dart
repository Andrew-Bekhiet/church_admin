final class RegistryEntry {
  final String typeName;
  final String label;
  final bool isEnum;

  String get memberName {
    final lowerFirst = typeName[0].toLowerCase() + typeName.substring(1);

    return lowerFirst == 'class' ? r'$class' : lowerFirst;
  }

  const RegistryEntry({
    required this.typeName,
    required this.label,
    required this.isEnum,
  });
}
