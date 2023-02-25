import 'package:flutter/material.dart';
import 'stack.dart';

// initiating the app
void main() {
  // TODO: create env variable to identify if the application is to read from
  //       website or mobile, and you might have to create new files 
  //       for different classes
  // https://stackoverflow.com/questions/45924474/how-do-you-detect-the-host-platform-from-dart-code
  runApp(const AppStack());
}

