import 'package:flutter/material.dart';
import 'dart:io';

import 'package:autism_simple_app/common/common.dart';
import 'package:autism_simple_app/pages/pages_routing/display_photo.dart';

// A widget that displays the picture taken by the user.
class DisplayPhoto extends StatelessWidget {
  final String imagePath;

  const DisplayPhoto({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Display the Picture')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: Column(
            children: [
                Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    child: Image.file(File(imagePath)),
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: () => createFilter(context),
                    child: const Text('Process face for filters'),
                ),
                ElevatedButton(
                    style: buttonStyle(),
                    onPressed: () => displayAll(context),
                    child: const Text('View all images taken'),
                ),
            ],
        ),
    );
  }
}