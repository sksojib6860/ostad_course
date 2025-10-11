import 'package:flutter/material.dart';

class Favbtn extends StatefulWidget {
  const Favbtn({super.key});

  @override
  State<Favbtn> createState() => _FavbtnState();
}

class _FavbtnState extends State<Favbtn> {
  bool isFav = false;
  bool isObscure = true;

  toggleFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  showPassword() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Fav Btn"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.person),
                suffixIcon: IconButton(
                  onPressed: showPassword,
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: toggleFav,
              icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
              color: Colors.red,
              iconSize: 60,
            ),
          ],
        ),
      ),
    );
  }
}
