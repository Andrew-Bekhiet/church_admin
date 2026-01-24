import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/repos/sembast/sembast_stub.dart'
    if (dart.library.io) 'package:church_admin/src/core/repos/sembast/sembast_io.dart'
    if (dart.library.js_interop) 'package:church_admin/src/core/repos/sembast/sembast_web.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart' as p;
import 'package:riverpod/riverpod.dart';
import 'package:sembast/sembast.dart';

final sembastProvider = FutureProvider.family<DatabaseClient, KvDatabase>(
  (ref, database) async {
    final dbName = database.filename;
    final Database db;

    if (kIsWeb) {
      db = await getDatabaseFactory(database).openDatabase(
        dbName,
        codec: await ref
            .read(encryptionServiceProvider)
            .getSembastCodec(dbName),
      );
    } else {
      final dir = await p.getApplicationDocumentsDirectory();
      await dir.create(recursive: true);

      db = await getDatabaseFactory(database).openDatabase(
        p.join(dir.path, dbName),
        codec: await ref
            .read(encryptionServiceProvider)
            .getSembastCodec(dbName),
      );
    }
    ref.onDispose(db.close);

    return db;
  },
);

enum KvDatabase {
  main,
  shared;

  String get filename => switch (this) {
    KvDatabase.main => 'main.db',
    KvDatabase.shared => 'shared.db',
  };
}
