import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final String img, title, rating;
  const CityWidget({
    super.key,
    required this.img,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(img)),
          ),
        ),
        Positioned(
          top: 170,
          left: 200,
          child: Text(
            title,
            style: TextStyle(
              backgroundColor: Colors.white,
              //background: Paint()..color = Colors.white10,
              color: Colors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 20,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(rating, style: TextStyle(color: Colors.yellow)),
          ),
        ),
      ],
    );
  }
}
