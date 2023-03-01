import 'package:flutter/material.dart';
import 'dart:io';

import 'package:autism_simple_app/common/common.dart';
import 'package:autism_simple_app/pages/pages_routing/pro_mode.dart';

// A widget that displays the picture taken by the user.
class DisplayAll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('All images generated')),
        // The image is stored as a file on the device. Use the `Image.file`
        // constructor with the given path to display the image.
        body: displayAllBuilder(context, new Directory('/data/user/0/com.example.autism_simple_app/cache/')),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
                Navigator.of(context).popUntil((route) => route.isFirst),
            },
            child: const Icon(Icons.home),
        ),
    );
  }
}

GridView displayAllBuilder(context, Directory directory) {
    var imageList = directory
        .listSync()
        .map((item) => item.path)
        .where((item) => item.endsWith(".jpg"))
        .toList(growable: false);
    return GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 3.0 / 4.6),
        itemBuilder: (context, index) {
            File file = new File(imageList[index]);
            String name = file.path.split('/').last;
            return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                        onTap: () => displayImage(context, imageList[index]),
                        child: Column(
                            children: <Widget>[
                                Expanded(
                                    child: Image.file(
                                        File(imageList[index]),
                                        fit: BoxFit.cover,
                                    ),
                                ),
                                Text(name)
                            ]
                        )
                    ),
                ),
            );
        },
    );
}
