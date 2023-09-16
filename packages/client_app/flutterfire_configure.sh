#!/bin/bash
set -euxo pipefail

BUNDLE_ID=dev.kingu.ubiscope.app
EMAIL=kohei.kanagu@gmail.com

for build_config in "Debug-dev" "Release-dev" "Profile-dev"; do
    flutterfire configure \
        --project ubiscope-dev \
        --ios-bundle-id $BUNDLE_ID.dev \
        --android-package-name $BUNDLE_ID.dev \
        --out lib/constants/firebase_options_dev.dart \
        --account $EMAIL \
        --yes \
        --ios-build-config $build_config \
        --ios-out ios/dev/GoogleService-Info.plist \
        --android-out /android/app/src/dev/google-services.json
done

for build_config in "Debug-prod" "Release-prod" "Profile-prod"; do
    flutterfire configure \
        --project ubiscope \
        --ios-bundle-id $BUNDLE_ID \
        --android-package-name $BUNDLE_ID \
        --out lib/constants/firebase_options_prod.dart \
        --account $EMAIL \
        --yes \
        --ios-build-config $build_config \
        --ios-out ios/prod/GoogleService-Info.plist \
        --android-out /android/app/src/prod/google-services.json
done
