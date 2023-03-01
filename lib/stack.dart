// flutter uses stack of widgets to build a history
// read this for more details https://docs.flutter.dev/development/ui/navigation
import 'package:flutter/material.dart';

import 'pages/home.dart';

class AppStack extends StatelessWidget {
  const AppStack({super.key});
  static const String _title = 'Autism Simple App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const HomeWidget(),
      ),
    );
  }
}
