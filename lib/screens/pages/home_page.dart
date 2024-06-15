import 'package:flutter/material.dart';
import 'package:instagram/screens/widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.camera_alt_outlined, size: 30),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          SizedBox(
            width: 100,
            child: Image.asset('assets/instagram.png'),
          ),
          const SizedBox(width: 80),
          const Icon(Icons.live_tv, size: 30),
          const SizedBox(width: 10),
          const Icon(Icons.telegram, size: 30),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => post(),
          ),
        ),
      ),
    );
  }
}
