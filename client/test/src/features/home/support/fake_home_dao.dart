import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeHomeDao extends Fake implements HomeDAO {
  final List<String> queries = [];

  HomeSearchResults results;
  Object? error;
  Completer<HomeSearchResults>? gate;

  FakeHomeDao({this.results = const HomeSearchResults(), this.error});

  @override
  Future<HomeSearchResults> searchAll(String query) async {
    queries.add(query);

    if (gate case final gate?) return gate.future;

    if (error case final error?) throw error;

    return results;
  }
}
