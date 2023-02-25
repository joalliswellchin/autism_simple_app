// this file will be all widgets that are stateless and reusable
import 'package:flutter/material.dart';

ElevatedButton back(context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text('Back'),
  );
}

class TitledAppBar extends StatelessWidget implements PreferredSizeWidget{
    // Get Name from db and replace John Doe
    final String title_name;
    TitledAppBar({
        super.key, 
        required this.title_name,
    });

    @override
    Widget build(BuildContext context) {
        return AppBar(
            title: Text(
                title_name
            ),
        );
    }

    @override
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
}