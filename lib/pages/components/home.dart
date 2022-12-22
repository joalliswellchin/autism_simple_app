import 'package:flutter/material.dart';

import '../simple_mode.dart';
import '../pro_mode.dart';

/// Navigation
void simpleMode(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SimpleMode()),
  );
}

void proMode(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProMode()),
  );
}
