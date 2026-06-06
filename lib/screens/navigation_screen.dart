import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'products_screen.dart';
import 'about_screen.dart';

class NavigationScreen extends StatefulWidget {
  final int selectedIndex;

  const NavigationScreen({
    super.key,
    this.selectedIndex = 0,
  });

  @override
  State<NavigationScreen> createState() =>
      _NavigationScreenState();
}

class _NavigationScreenState
    extends State<NavigationScreen> {

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.selectedIndex;
  }

  final List<Widget> screens = const [
    HomeScreen(),
    ProductsScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff0D0D0D),
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Products",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "About",
          ),
        ],
      ),
    );
  }
}