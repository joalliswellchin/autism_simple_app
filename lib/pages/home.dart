import 'package:flutter/material.dart';

import 'components/home.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () => simpleMode(context),
            child: const Text('Simple mode'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: null,
            // onPressed: () => proMode(context),
            child: const Text('Pro mode'),
          ),
        ],
      ),
    );
  }
}
