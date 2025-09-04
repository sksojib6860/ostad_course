import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey.withOpacity(0.7),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('My', style: TextStyle(fontSize: 50)),
                  Text('My', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                  Text('My Body', style: TextStyle(fontSize: 50)),
                ],
              ),
              // Column(
              //   children: [
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //     Text('My Body', style: TextStyle(fontSize: 50)),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
