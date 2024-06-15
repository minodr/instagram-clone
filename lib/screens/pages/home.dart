import 'package:flutter/material.dart';
import 'package:instagram/screens/pages/favorite_page.dart';
import 'package:instagram/screens/pages/home_page.dart';
import 'package:instagram/screens/pages/post_page.dart';
import 'package:instagram/screens/pages/profile_page.dart';
import 'package:instagram/screens/pages/search_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentPage = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: const [
          HomePage(),
          SearchPage(),
          PostPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        currentIndex: currentPage,
        onTap: (newPage) {
          pageController.animateToPage(
            newPage,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeIn,
          );
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            activeIcon: Icon(Icons.search),
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Add',
            activeIcon: Icon(Icons.add_box_outlined, size: 32),
            icon: Icon(Icons.add_box_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Favorites',
            activeIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
