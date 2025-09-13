import 'package:flutter/material.dart';

class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Stack View')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // Stack(
          //   children: [
          //     Positioned(
          //       child: CircleAvatar(
          //         radius: 70,
          //         child: Image.network(
          //           'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
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
        ],
      ),
    );
  }
}
