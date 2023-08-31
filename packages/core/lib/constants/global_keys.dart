import 'package:flutter/material.dart';

final rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

final rootNavigatorStateKey = GlobalKey<NavigatorState>();

BuildContext? rootContext() =>
    rootNavigatorStateKey.currentState?.overlay?.context;
