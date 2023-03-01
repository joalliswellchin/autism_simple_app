import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:autism_simple_app/common/common.dart';
import 'package:autism_simple_app/pages/pages_routing/pro_mode.dart';

/* 
The workflow here:
1. take photo with camera
2. generate images with filter and rename files with name: name_emotion.jpg
3. create a grid with the images that have filtered
here are some helpful links:
face mesh detection with image input https://pub.dev/packages/google_mlkit_face_detection
*/

class ProMode extends StatefulWidget {
  const ProMode({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  State<ProMode> createState() => _ProModeState();
}

// TODO: generate images with filter and rename files with name: name_emotion.jpg
// then allow grouping to be viewed in admin mode via name_emotion.jpg
class _ProModeState extends State<ProMode> {
  // for more info about camera: https://pub.dev/packages/camera
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture')),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        child: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(_controller);
            } else {
              // Otherwise, display a loading indicator.
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();

            if (!mounted) return;

            // save image to local
            print(image.path);
            File img = File(image.path); // /data/user/0/com.example.autism_simple_app/cache/

            // display it on a new screen
            displayImage(context, image.path);
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
