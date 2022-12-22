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

void proMode(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProMode()),
  );
}

void adminPage(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AdminPage()),
  );
}
