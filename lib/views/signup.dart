// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipies/views/login.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
          SizedBox(height: 10),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Image.asset("images/doctor1.png"),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              obscureText: passToggle ? true : false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Email Password'),
                prefixIcon: Icon(Icons.email),
                suffixIcon: InkWell(
                  onTap: () {
                    if (passToggle == true) {
                      passToggle = false;
                    } else {
                      passToggle = true;
                    }
                    setState(() {});
                  },
                  child: passToggle
                      ? Icon(CupertinoIcons.eye_fill)
                      : Icon(CupertinoIcons.eye_fill),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: Material(
                color: Color(0xFF7165d6),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    // Navigator.push
                    // (context,
                    // MaterialPageRoute(
                    //   builder: (context)=>LoginScreen(),
                    // ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("I have All ready account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  )),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7165D6),
                  ),
                ),
              ),
            ],
          )
        ])),
      ),
    );
  }
}
