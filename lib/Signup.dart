import 'package:flutter/material.dart';
import 'package:my_app/dribble.dart';
import 'package:my_app/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        const SizedBox(height: 120),
        const Center(
          child: Text(
            'Create Account',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Center(
          child: Text(
            'Sign Up',
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
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
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
            labelText: ' Confirm Password',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
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
            child: const Text('Sign up'),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Login())));
          },
          child: const Text('Already have an account, Log in'),
        ),
      ]),
    );
  }
}
