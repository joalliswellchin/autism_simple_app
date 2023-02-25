/// this file is to hold the array of emojis

import 'package:flutter/material.dart';

// TODO: get images from cloud if website
//       and get images from assets if mobile
// https://stackoverflow.com/questions/50521274/how-to-get-a-list-of-files-from-the-directory-and-pass-it-to-the-listview
List<Widget> imageData() {
  return [
    Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/images/smile.png'),
            ),
          ),
          Text("Happy")
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/images/frown.png'),
            ),
          ),
          Text("Sad")
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/images/surprised.png'),
            ),
          ),
          Text("Surprised")
        ],
      ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/images/cry.png'),
            ),
          ),
          Text("Very Sad")
        ],
      ),
    ),
  ];
}
