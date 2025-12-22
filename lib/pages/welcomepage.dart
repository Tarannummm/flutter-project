import 'dart:js';

import 'package:flutter/material.dart';
import 'package:helloworld/authentication/auth_gate.dart';
import 'package:helloworld/main.dart';
import 'package:helloworld/pages/sign_in_page.dart';
import 'package:helloworld/pages/signup.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            "images/purple.png",
            fit: BoxFit.fill,
          )),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.35,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Text(
                  "Enter Your Details",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 180,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AuthGate()));
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
