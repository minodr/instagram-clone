import 'package:flutter/material.dart';
import 'package:instagram/screens/pages/home.dart';

class AuthRepository {
  static void authenticateUser(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const Home(),
      ),
    );
  }
}
