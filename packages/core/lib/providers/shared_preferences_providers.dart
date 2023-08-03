import 'package:core/providers/firebase_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_providers.g.dart';

const _completedOnboarding = 'completed_onboarding';

const _beaconScanUuid = 'beacon_scan_uuid';

const _beaconScanMajor = 'beacon_scan_major';

const _beaconScanMinor = 'beacon_scan_minor';

@riverpod
SharedPreferences sharedPreferencesInstance(
  SharedPreferencesInstanceRef ref,
) =>
    throw UnimplementedError();

@riverpod
class SharedPreferencesController extends _$SharedPreferencesController {
  @override
  SharedPreferences build() {
    return ref.watch(sharedPreferencesInstanceProvider);
  }

  Future<void> clear() async {
    await state.clear();
    ref.notifyListeners();
  }

  void _didChange() {
    state.reload();
    ref.notifyListeners();
  }

  Future<void> onCompleteOnboarding() async {
    await ref.read(firebaseAnalyticsProvider).logEvent(
          name: _completedOnboarding,
        );

    await state.setBool(_completedOnboarding, true);
    _didChange();
  }

  Future<void> setBeaconScanUuid(String? uuid) async {
    if (uuid == null) {
      await state.remove(_beaconScanUuid);
    } else {
      await state.setString(_beaconScanUuid, uuid);
    }

    _didChange();
  }

  Future<void> setBeaconScanMajor(int? major) async {
    if (major == null) {
      await state.remove(_beaconScanMajor);
    } else {
      await state.setInt(_beaconScanMajor, major);
    }

    _didChange();
  }

  Future<void> setBeaconScanMinor(int? minor) async {
    if (minor == null) {
      await state.remove(_beaconScanMinor);
    } else {
      await state.setInt(_beaconScanMinor, minor);
    }

    _didChange();
  }
}

@riverpod
bool sharedPreferencesCompletedOnboarding(
  SharedPreferencesCompletedOnboardingRef ref,
) =>
    ref
        .watch(sharedPreferencesControllerProvider)
        .getBool(_completedOnboarding) ??
    false;

@riverpod
String? sharedPreferencesBeaconScanUuid(
  SharedPreferencesBeaconScanUuidRef ref,
) =>
    ref.watch(sharedPreferencesControllerProvider).getString(_beaconScanUuid);

@riverpod
int? sharedPreferencesBeaconScanMajor(
  SharedPreferencesBeaconScanMajorRef ref,
) =>
    ref.watch(sharedPreferencesControllerProvider).getInt(_beaconScanMajor);

@riverpod
int? sharedPreferencesBeaconScanMinor(
  SharedPreferencesBeaconScanMinorRef ref,
) =>
    ref.watch(sharedPreferencesControllerProvider).getInt(_beaconScanMinor);
