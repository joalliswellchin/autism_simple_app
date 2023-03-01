/// this file is to hold the array of emojis

import 'package:flutter/material.dart';

// TODO: get images from cloud if website
//       and get images from internal memory if mobile
// https://stackoverflow.com/questions/50521274/how-to-get-a-list-of-files-from-the-directory-and-pass-it-to-the-listview
// TODO: change assets to mobile internal storage, as assets folder is read-only
List<Widget> imageData() {
  return [
    Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('assets/images/simple/smile.png'),
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
              image: AssetImage('assets/images/simple/frown.png'),
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
              image: AssetImage('assets/images/simple/surprised.png'),
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
              image: AssetImage('assets/images/simple/cry.png'),
            ),
          ),
          Text("Very Sad")
        ],
      ),
    ),
  ];
}
