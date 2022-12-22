/// flutter uses stack of widgets to build a history
/// read this for more details https://docs.flutter.dev/development/ui/navigation

/// deprecated as hardware_buttons is deprecated and may not work
/// eventlistener used to prevent use of lock and home button
/// import 'package:flutter/material.dart';

/*
import 'dart:async';
import 'package:hardware_buttons/hardware_buttons.dart';

import 'pages/home.dart';

class AppStack extends StatefulWidget {
  const AppStack({super.key});

  @override
  State<AppStack> createState() => _AppStackState();
}

class _AppStackState extends State<AppStack> {
  final String _title = 'Autism Simple App';
  late StreamSubscription<VolumeButtonEvent> _volumeButtonSubscription;
  late StreamSubscription<HomeButtonEvent> _homeButtonSubscription;
  late StreamSubscription<LockButtonEvent> _lockButtonSubscription;

  @override
  void initState() {
    super.initState();
    _volumeButtonSubscription = volumeButtonEvents.listen((event) {});
    _homeButtonSubscription = homeButtonEvents.listen((event) {});
    _lockButtonSubscription = lockButtonEvents.listen((event) {});
  }

  @override
  void dispose() {
    super.dispose();
    _volumeButtonSubscription?.cancel();
    _homeButtonSubscription?.cancel();
    _lockButtonSubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
*/