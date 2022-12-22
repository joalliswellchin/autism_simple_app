import 'package:flutter/material.dart';

import 'package:autism_simple_app/common/simple_data.dart';

class SimpleMode extends StatelessWidget {
  const SimpleMode({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Emotions';
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: GridView.count(
        crossAxisCount: 3,
        children: imageData(),
      ),
    );
  }
}
