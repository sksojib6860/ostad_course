import 'package:flutter/material.dart';

import '../widget/citywidget.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Stack View')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    ),
                  ),
                  Positioned(
                    top: 140,
                    left: 130,
                    child: Container(
                      height: 30,
                      width: 30,

                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.red),
                Container(height: 160, width: 160, color: Colors.orange),
                Container(height: 120, width: 120, color: Colors.yellow),
                Container(height: 70, width: 70, color: Colors.green),
                Container(height: 40, width: 40, color: Colors.blue),
                Container(height: 20, width: 20, color: Colors.purple),
                Container(height: 10, width: 10, color: Colors.pink),
                Container(height: 5, width: 5, color: Colors.grey),
                Container(height: 1, width: 1, color: Colors.black),
              ],
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 7),
                  CityWidget(
                    img:
                        'https://tse1.explicit.bing.net/th/id/OIP.QSKwv2sMNrg6bGJMnnd82wHaFj?rs=1&pid=ImgDetMain&o=7&rm=3',
                    title: 'London',
                    rating: '⭐ 5.0',
                  ),
                  SizedBox(width: 10),
                  CityWidget(
                    img:
                        'https://live.staticflickr.com/5462/7089939683_efe71ea624_b.jpg',
                    title: 'tokyo',
                    rating: '⭐ 4.0',
                  ),
                  SizedBox(width: 10),
                  CityWidget(
                    img:
                        'https://t3.ftcdn.net/jpg/05/98/42/60/360_F_598426018_dZSafUODg9I0cEBJrj8F4AHzYmrXrHdW.jpg',
                    title: 'Dhaka',
                    rating: '⭐ 5.0',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
