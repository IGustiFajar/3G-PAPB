import 'package:edutech/pages/BerandaPage.dart';
import 'package:edutech/pages/loginPage.dart';
import 'package:edutech/pages/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NavBar();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
