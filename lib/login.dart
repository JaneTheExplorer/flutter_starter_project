import 'package:flutter/material.dart';
import 'package:my_app/Signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(height: 120),
        Center(
          child: Text(
            'Welcome',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Text(
            'Glad to see you!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Form(
            child: Column(),
          ),
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email Address',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Form(
              child: Column(),
            )),
        SizedBox(height: 5),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.password),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () {},
          child: Text(
            'forgot password',
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 150,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Signup())));
          },
          child: Text("Don't have an account? Sign Up"),
        ),
      ]),
    );
  }
}
