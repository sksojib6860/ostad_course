import 'package:flutter/material.dart';

class GriedView extends StatelessWidget {
  const GriedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text('Gried View')),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue[100 * ((index % 8) + 1)],
              borderRadius: BorderRadius.circular(30),
            ),
            width: 120,
            height: 120,

            child: Center(child: Text('Item = $index')),
          );
        },

        // body: GridView.count(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   children: List.generate(20, (index) {
        //     return Card(
        //       elevation: 5,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(15),
        //       ),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [Icon(Icons.login_sharp), Text('Iteam $index')],
        //       ),
        //       color: Colors.red,
        //     );
        //   }),
        // ),
      ),
    );
  }
}
