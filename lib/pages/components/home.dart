import 'package:flutter/material.dart';

/// Navigation
void simpleMode(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SimpleMode()),
  );
}

void proMode(context) {}

///
class SimpleMode extends StatelessWidget {
  const SimpleMode({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: create grid here, might need use stateful, need to have back here(optional)
    return Scaffold(
      body: Center(
        // make this child widget a common widget
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
