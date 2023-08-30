import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final fontManifest = await rootBundle.loadStructuredData(
    'FontManifest.json',
    (string) async => json.decode(string) as Iterable<dynamic>,
  );

  for (final e in fontManifest) {
    final loader = FontLoader(
      (e as Map<String, dynamic>)['family'] as String,
    );

    for (final f in e['fonts'] as List<dynamic>) {
      loader.addFont(
        rootBundle.load((f as Map<String, dynamic>)['asset'] as String),
      );
    }
    await loader.load();
  }

  await testMain();
}
