import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'package_info_providers.g.dart';

@riverpod
PackageInfo packageInfo(
  PackageInfoRef _,
) =>
    throw UnimplementedError();

@riverpod
String packageInfoName(
  PackageInfoNameRef ref,
) =>
    ref.watch(packageInfoProvider).packageName;
