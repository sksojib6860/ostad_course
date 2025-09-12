import 'package:flutter/material.dart';
import 'package:ostad_batch_12/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formkey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(width: 120, height: 120, 'assets/logo.webp'),
                SizedBox(height: 70),

                ///email
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                  // keyboardType: TextInputType.emailAddress,
                  //maxLength: 20,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    // focusColor: Colors.purpleAccent,
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: 'example@gmail.com',
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                ///password
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'please enter atleast 8 characters';
                    } else {
                      return null;
                    }
                  },
                  obscureText: obsecureText,
                  controller: passwordController,
                  // keyboardType: TextInputType.emailAddress,
                  maxLength: 8,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    // focusColor: Colors.purpleAccent,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecureText = !obsecureText;
                        });
                      },
                      icon: Icon(
                        obsecureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],

                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                ///login
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print('Email number ${emailController.text}');
                        print('Password ${passwordController.text}');
                        emailController.clear();
                        passwordController.clear();
                      }
                    },
                    child: Text('Log In'),
                  ),
                ),
                SizedBox(height: 15),

                ///sign up
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text('Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
