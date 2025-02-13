import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';

class SneksarInit implements Initializer {
  const SneksarInit();

  @override
  Future<void>? initialize() async {
    sneksarCSVData = await rootBundle.loadString('assets/sneksar-data.csv');
  }
}
