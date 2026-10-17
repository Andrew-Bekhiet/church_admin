import 'package:church_admin/church_admin.dart';
import 'package:mocktail/mocktail.dart';

class InMemoryUserPreferencesService extends Mock
    implements UserPreferencesService {
  @override
  HomeMode? lastHomeMode;

  InMemoryUserPreferencesService({this.lastHomeMode});

  @override
  Future<void> setLastHomeMode(HomeMode? value) async {
    lastHomeMode = value;
  }
}
