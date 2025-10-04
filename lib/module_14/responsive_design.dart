import 'package:flutter/material.dart';

class ResponsIveDesing extends StatelessWidget {
  const ResponsIveDesing({super.key});

  @override
  Widget build(BuildContext context) {
    Size Screensize = MediaQuery.of(context).size;
    final bool isTablet = Screensize.width > 600;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Responsive Design'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('device in ${orientation} mode'),
              Text(
                'Adobtive size ${isTablet ? 'Tablet' : 'Phone'}',
                style: TextStyle(fontSize: 20),
              ),
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Container(color: Colors.red),
              ),
              Text(
                'Container with fixed height of 200',
                style: TextStyle(fontSize: Screensize.width * 0.04),
              ),
              Container(
                color: Colors.purple,
                height: Screensize.height,
                width: Screensize.width,
                child: Center(
                  child: Text(
                    'Fixed Height Container',
                    style: TextStyle(
                      fontSize: 0.1 * Screensize.width,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 11 / 12,
                child: Container(
                  color: Colors.red,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Fractionally Sized Box',
                      style: TextStyle(fontSize: 0.06 * Screensize.height),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              isTablet
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.phone),
                        Icon(Icons.tablet),
                        Icon(Icons.phone_iphone),
                        Icon(Icons.apple),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone),
                        Icon(Icons.tablet),
                        Icon(Icons.phone_iphone),
                        Icon(Icons.apple),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
