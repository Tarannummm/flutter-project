import 'dart:html';

import 'package:flutter/material.dart';
import 'package:helloworld/authentication/auth_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final authServices = AuthService();
    final currentEmail = authServices.getCurrentEmail();

    void logOut() async {
      await authServices.signOut();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),
      body: Center(
        child: Text(currentEmail.toString()),
      ),
    );
  }
}
