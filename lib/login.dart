import 'package:flutter/material.dart';
import 'package:my_app/Signup.dart';
import 'package:my_app/dribble.dart';

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
        const SizedBox(height: 120),
        const Center(
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
        const Center(
          child: Text(
            'Glad to see you!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Form(
            child: Column(),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email Address',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Form(
              child: Column(),
            )),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.password),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () {},
          child: const Text(
            'forgot password',
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 150,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => Dribble())));
            },
            child: const Text('Login'),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => Signup())));
          },
          child: const Text("Don't have an account? Sign Up"),
        ),
      ]),
    );
  }
}
