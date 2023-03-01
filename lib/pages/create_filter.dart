import 'package:flutter/material.dart';
import 'dart:io';

import 'package:autism_simple_app/common/common.dart';

// process the images and display all possible emotions
class CreateFilter extends StatefulWidget {
    const CreateFilter({
        super.key,
    });
    
    @override
    State<CreateFilter> createState() => _CreateFilterState();
}

class _CreateFilterState extends State<CreateFilter>{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Creating Emotions using Photo')),
            body: Container(), 
        );
    }
}