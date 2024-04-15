import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 232, 47, 136),
            borderRadius: BorderRadius.circular(500),
            border: Border.all(
              color: Color.fromARGB(255, 231, 121, 158),
              width: 5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SOCIAL MEDIA DASHBOARD',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: Text(
                  'USER LOGIN',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                  // child: CustomTextField(
                  //   controller: usernameController,
                  //   labelText: 'Username',
                  //   labelColor: Colors.red,
                  // ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                  width: 200,
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.blue),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                    ),

                    // child: CustomTextField(
                    //   controller: passwordController,
                    //   labelText: 'Password',
                    //   obscureText: true,
                    //   labelColor: Colors.blue,
                    // ),
                  )),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                },
                child: Text('Login'),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                },
                child: Text('Create Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final Color labelColor;

  CustomTextField({
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.labelColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor),
      ),
      obscureText: obscureText,
    );
  }
}
