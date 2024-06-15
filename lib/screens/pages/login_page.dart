import 'package:flutter/material.dart';
import 'package:instagram/repository/auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              height: 100,
              width: 200,
              child: Image.asset('assets/instagram.png'),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username or email',
                  prefixIcon: const Icon(Icons.email, size: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, size: 15),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 180),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?'),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => AuthRepository.authenticateUser(context),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 60),
                Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 30,
                ),
                SizedBox(width: 5),
                Text(
                  'Log in with facebook',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Image.asset('assets/or.png'),
            Row(
              children: [
                const SizedBox(width: 50),
                const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
        height: 80,
        child: BottomAppBar(
          child: Center(
            child: Text(
              'Instagram or Facebook',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
