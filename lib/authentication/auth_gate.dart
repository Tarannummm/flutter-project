import 'package:flutter/material.dart';
import 'package:helloworld/pages/profile_page.dart';
import 'package:helloworld/pages/sign_in_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Supabase.instance.client.auth.onAuthStateChange,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(
              body: CircularProgressIndicator(),
            );
            final Session = snapshot.hasData ? snapshot.data!.session : null;
            if (Session != null) {
              return ProfilePage();
            } else {
              return signinpage();
            }
          }
        });
  }
}
