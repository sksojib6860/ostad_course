import 'package:flutter/material.dart';
import 'package:ostad_batch_12/module_11/stack.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade600,
          ),
        ),
      ),
      home: Stack1(),
    );
  }
}
