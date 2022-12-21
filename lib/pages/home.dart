import 'package:flutter/material.dart';

import 'components/home.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
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
            onPressed: () => proMode(context),
            child: const Text('Pro mode'),
          ),
        ],
      ),
    );
  }
}
