import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_providers.g.dart';

@riverpod
FirebaseApp firebaseApp(FirebaseAppRef _) => throw UnimplementedError();

@riverpod
FirebaseCrashlytics firebaseCrashlytics(FirebaseCrashlyticsRef _) =>
    FirebaseCrashlytics.instance;

@riverpod
FirebaseFirestore firebaseFirestore(FirebaseFirestoreRef _) =>
    FirebaseFirestore.instance;

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef _) => FirebaseAuth.instance;

@riverpod
FirebaseAnalytics firebaseAnalytics(FirebaseAnalyticsRef _) =>
    FirebaseAnalytics.instance;

@riverpod
FirebasePerformance firebasePerformance(FirebasePerformanceRef _) =>
    FirebasePerformance.instance;

@riverpod
FirebaseFunctions firebaseFunctions(FirebaseFunctionsRef _) =>
    FirebaseFunctions.instanceFor(
      region: 'asia-northeast1',
    );
