import 'package:church_admin/church_admin.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_sqflite/sembast_sqflite.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

DatabaseFactory getDatabaseFactory(KvDatabase database) =>
    database == KvDatabase.shared
    ? getDatabaseFactorySqflite(sqflite.databaseFactory)
    : databaseFactoryIo;
