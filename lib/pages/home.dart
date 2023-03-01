import 'package:flutter/material.dart';

import 'pages_routing/home.dart';
import 'package:autism_simple_app/common/common.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: buttonStyle(),
            onPressed: () => simpleMode(context),
            child: const Text('Simple mode'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: buttonStyle(),
            onPressed: () => proMode(context),
            child: const Text('Pro mode'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: buttonStyle(),
            onPressed: () => adminPage(context),
            child: const Text('Admin'),
          ),
        ],
      ),
    );
  }
}
