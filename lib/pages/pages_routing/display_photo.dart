import 'package:flutter/material.dart';

import 'package:autism_simple_app/pages/create_filter.dart';
import 'package:autism_simple_app/pages/display_all.dart';

/// Navigation
void createFilter(context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateFilter()),
    );
}

void displayAll(context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DisplayAll()),
    );
}