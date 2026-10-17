import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeHomeDao extends Fake implements HomeDAO {
  final List<String> queries = [];

  HomeSearchResults results;

  FakeHomeDao({this.results = const HomeSearchResults()});

  @override
  Future<HomeSearchResults> searchAll(String query) async {
    queries.add(query);

    return results;
  }
}
