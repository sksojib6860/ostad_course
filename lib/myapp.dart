import 'package:flutter/material.dart';

import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      //theme: ThemeData(primaryColor: Colors.grey),
      home: LoginPage(),
    );
  }
}
