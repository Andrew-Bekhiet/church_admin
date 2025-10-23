extension NormalizeString on String {
  String normalize() {
    return toLowerCase()
        .trim()
        .replaceAllMapped(RegExp(r'[أإآءؤئچةى]'), (match) {
          final value = match.input.substring(match.start, match.end);

          switch (value) {
            case 'أ':
            case 'إ':
            case 'آ':
              return 'ا';

            case 'ء':
            case 'ؤ':
            case 'ئ':
              return 'ء';

            case 'ݘ':
            case 'چ':
              return 'ج';

            case 'ࣄ':
            case 'ڨ':
            case 'ڤ':
              return 'ف';

            case 'ة':
              return 'ه';

            case 'ى':
              return 'ي';

            default:
              return value;
          }
        })
        .replaceAll(RegExp('[،.ًٌٍَُِّْ]'), '');
  }
}
