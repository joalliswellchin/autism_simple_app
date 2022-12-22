// this file will be all widgets that are stateless and reusable
import 'package:flutter/material.dart';

ElevatedButton back(context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text('Back'),
  );
}
