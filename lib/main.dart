import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helloworld/pages/welcomepage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      url: "https://ryteyeqlygztwqsceoan.supabase.co",
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ5dGV5ZXFseWd6dHdxc2Nlb2FuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ1NzU4MTEsImV4cCI6MjA4MDE1MTgxMX0.TB0Mb4LNTo6sMWUdu5eVd1D8-qj-nPSQe6y7vZm-LY8");
  runApp(MyApp()); //first class object as parameter
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Section G",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.teal[300],
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Text("Flutter class"),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Color(0xff95d0ca),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Container(
        //         height: 200,
        //         width: 200,
        //         color: Color(0xff37827a),
        //       ),
        //     ],
        //   ),
        // ));
        //
        body: CircleAvatar(
          radius: 200,
          //child: Image.asset("images/images.png")),
          backgroundImage: AssetImage("images/images.png"),
        ));
  }
}
