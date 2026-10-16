import 'package:church_admin/church_admin.dart';
import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';

void defaultTearDown() {
  resetGlobalProviderContainer();
  resetMockitoState();
  resetMocktailState();
}
