import 'package:flutter/material.dart';

import '../../common/common.dart';

class ProMode extends StatelessWidget {
  const ProMode({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: create grid here, might need use stateful
    return Scaffold(
      body: Center(child: back(context)),
    );
  }
}
