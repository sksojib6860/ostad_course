import 'package:flutter/material.dart';

import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool obsecureText = true;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController re_passwordController = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/logo.webp',
                    width: 120,
                    height: 120,
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    } else {
                      return null;
                    }
                  },
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  //maxLength: 20,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    // focusColor: Colors.purpleAccent,
                    // filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: 'Enter your name',
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
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
                    } else if (value.length < 11) {
                      return 'Please enter 11 characters number';
                    } else if (value.length > 11) {
                      return 'Please exit some number';
                    } else {
                      return null;
                    }
                  },
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  //maxLength: 20,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    // focusColor: Colors.purpleAccent,
                    //filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: '+8801XXXXX',
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
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  //maxLength: 20,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                    // focusColor: Colors.purpleAccent,
                    //filled: true,
                    fillColor: Colors.grey[300],
                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: 'enter email addres',
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
                    //filled: true,
                    fillColor: Colors.grey[300],

                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: ' Password',
                    prefixIcon: Icon(Icons.password_outlined),
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
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please re-enter your password';
                    } else if (value.length < 8) {
                      return 'please enter atleast 8 characters';
                    } else if (value != passwordController.text) {
                      return 'password not match';
                    } else {
                      return null;
                    }
                  },
                  obscureText: obsecureText,
                  controller: re_passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 8,
                  cursorColor: Colors.purpleAccent,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),

                    // focusColor: Colors.purpleAccent,
                    // filled: true,
                    fillColor: Colors.grey[300],

                    labelStyle: TextStyle(color: Colors.purpleAccent),
                    labelText: 'Re-enter password',
                    prefixIcon: Icon(Icons.password_sharp),
                    prefixIconColor: Colors.purpleAccent,
                    hintText: 'Re-enter your password',
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
                        print('Name ${nameController.text}');
                        print('Phone ${phoneController.text}');
                        print('Email ${emailController.text}');
                        print('Password ${passwordController.text}');
                        print('Re-Password ${re_passwordController.text}');
                        nameController.clear();
                        phoneController.clear();
                        emailController.clear();
                        passwordController.clear();
                        re_passwordController.clear();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      }
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


