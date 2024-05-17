// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class AuthStreamBuider extends StatefulWidget {
  const AuthStreamBuider({super.key});

  @override
  State<AuthStreamBuider> createState() => _AuthStreamBuiderState();
}

class _AuthStreamBuiderState extends State<AuthStreamBuider> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Navbar();
          } else if (snapshot.hasError) {
            final error = snapshot.error.toString();
            if (error.contains(
                'The password is invalid or the user does not have a password.')) {
              return const Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Invalid Login Credentials"),
                    ],
                  ),
                ),
              );
            } else {
              return const Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Authentication Error"),
                      Text('Error Message:'),
                    ],
                  ),
                ),
              );
            }
          } else {
            return const Text("Please check the credential well");
          }
        });
  }
}
