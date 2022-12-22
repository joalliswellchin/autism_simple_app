import 'package:flutter/material.dart';

import 'package:autism_simple_app/common/common.dart';

//TODO: add password checks, list of all images and labels,
// and ability to upload (temporarily store in local, future store in cloud)
class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: back(context)),
    );
  }
}
