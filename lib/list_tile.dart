import 'package:flutter/material.dart';

class ListTile1 extends StatelessWidget {
  const ListTile1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("ListTile", style: TextStyle(color: Colors.white)),
      ),

      // body: ListView.separated(
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: Icon(Icons.phone),
      //         title: Text('Sojeb Chandra'),
      //         subtitle: Text('+8801768601533'),
      //         trailing: Icon(Icons.delete),
      //       ),
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return Divider(height: 10);
      //   },
      // ),

      // body: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 10,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       child: Center(child: Text('Item $index')),
      //       color: Colors.green[100 * (index % 10)],
      //       width: 120,
      //     );
      //   },
      // ),

      // body: ListView.builder(
      //   itemCount: 20,
      //
      //   itemBuilder: (context, index) {
      //     return Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      //       child: Card(
      //         elevation: 0,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         shadowColor: Colors.green,
      //
      //         color: Colors.grey,
      //         child: ListTile(
      //           trailing: Icon(Icons.delete, color: Colors.redAccent),
      //           leading: Icon(Icons.phone),
      //           title: Text('Sojeb Chandra'),
      //           subtitle: Text('+8801768601533'),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      // body: Card(
      //   child: Column(
      //     children: [
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title'),
      //       ),
      //       Divider(height: 5, thickness: 1),
      //
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title2'),
      //       ),
      //       Divider(height: 5, thickness: 1),
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title2'),
      //       ),
      //       Divider(height: 5, thickness: 1),
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title2'),
      //       ),
      //       Divider(height: 5, thickness: 1),
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title2'),
      //       ),
      //       Divider(height: 5, thickness: 1),
      //       ListTile(
      //         trailing: Icon(Icons.delete),
      //         leading: Icon(Icons.phone),
      //         title: Text('My title2'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
