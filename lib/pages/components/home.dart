import 'package:camera/camera.dart';

import 'package:autism_simple_app/pages/admin_mode.dart';
import 'package:autism_simple_app/pages/simple_mode.dart';
import 'package:autism_simple_app/pages/pro_mode.dart';
import 'package:flutter/material.dart';

/// Navigation
void simpleMode(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SimpleMode()),
  );
}

late List<CameraDescription> _cameras;
void proMode(context) async {
  WidgetsFlutterBinding.ensureInitialized();

  final _cameras = await availableCameras();
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProMode(camera: _cameras[0])),
  );
}

void adminPage(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AdminPage()),
  );
}
