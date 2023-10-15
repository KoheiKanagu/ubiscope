# 𝕌𝕓𝕚𝕤𝕔𝕠𝕡𝕖 - A Platform for Collecting and Debugging Ubiquitous Information

![ubiscope](assets/feature_graphic.webp)

[![Open in Visual Studio Code](https://img.shields.io/static/v1?logo=visualstudiocode&label=&message=Open%20in%20Visual%20Studio%20Code&labelColor=2c2c32&color=007acc&logoColor=007acc)](https://open.vscode.dev/KoheiKanagu/ubiscope)
[![Build](https://github.com/KoheiKanagu/ubiscope/actions/workflows/build.yaml/badge.svg)](https://github.com/KoheiKanagu/ubiscope/actions/workflows/build.yaml)
[![Firebase Deploy Dev](https://github.com/KoheiKanagu/ubiscope/actions/workflows/firebase_deploy_dev.yaml/badge.svg)](https://github.com/KoheiKanagu/ubiscope/actions/workflows/firebase_deploy_dev.yaml)
[![Firebase Deploy Prod](https://github.com/KoheiKanagu/ubiscope/actions/workflows/firebase_deploy_prod.yaml/badge.svg)](https://github.com/KoheiKanagu/ubiscope/actions/workflows/firebase_deploy_prod.yaml)

## Features

### [client_app](packages/client_app)

<a
  href="https://apps.apple.com/app/apple-store/id6448748588?pt=121589329&ct=github_readme&mt=8">
<img src="assets/badges/app_store.webp" alt="App Store" width="155"/>
</a>
<a
  href="https://play.google.com/store/apps/details?id=dev.kingu.ubiscope.app&utm_source=github&utm_campaign=readme">
<img src="assets/badges/google_play.webp" alt="Google Play" width="175"/>
</a>

- Client application for iOS and Android that supports collecting ubiquitous information
- Registration of measurement points based on Google Maps
- Collection of Wi-Fi and iBeacon at measurement points

#### Frameworks and Main Packages Used

- Flutter
- Firebase
- Riverpod
- go_router
- freezed
- pigeon
- pedantic_mono
