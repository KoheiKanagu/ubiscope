import 'package:flutter/material.dart';

final rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

final rootNavigatorStateKey = GlobalKey<NavigatorState>();

final rootContext = rootNavigatorStateKey.currentState?.overlay?.context;
