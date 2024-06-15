import 'package:flutter/material.dart';
import 'package:instagram/screens/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purple,
                  Colors.blue,
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Positioned(
            top: 260,
            left: 80,
            child: SizedBox(
              height: 100,
              width: 200,
              child: Image.asset(
                'assets/instagram.png',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: -50,
            child: SizedBox(
              width: 400,
              height: 300,
              child: Image.asset('assets/image_one.png'),
            ),
          ),
          Positioned(
            top: 300,
            left: -30,
            child: SizedBox(
              width: 400,
              height: 300,
              child: Image.asset('assets/image_two.png'),
            ),
          ),
        ],
      ),
    );
  }
}
