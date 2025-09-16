import 'package:flutter/material.dart';

import 'module_12/tab_drawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //theme: ThemeData(primaryColor: Colors.grey),
      home: Tab_Drawer(),
    );
  }
}
