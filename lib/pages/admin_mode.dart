import 'package:flutter/material.dart';

import 'package:autism_simple_app/common/common.dart';
import 'package:autism_simple_app/pages/pages_routing/display_photo.dart';

// TODO: add password checks(?)
// TODO: do importing and exporting
class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin')),
      body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: buttonStyle(),
            onPressed: () => displayAll(context),
            child: const Text('View all images taken'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: buttonStyle(),
            onPressed: null,
            child: const Text('Export Images'),
          ),
        ],
      ),
    ),
    );
  }
}
