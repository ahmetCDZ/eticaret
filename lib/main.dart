import 'package:flutter/material.dart';

import 'menu_animasyon.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuAnimasyon(),
    );
  }
}
