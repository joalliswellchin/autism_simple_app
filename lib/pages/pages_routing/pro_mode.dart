import 'package:flutter/material.dart';

import 'package:autism_simple_app/pages/display_photo.dart';

/// Navigation
void displayImage(context, String imagePath) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DisplayPhoto(imagePath: imagePath)),
    );
}