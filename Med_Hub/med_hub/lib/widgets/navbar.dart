import 'package:flutter/material.dart';
import 'package:med_hub/screens/mainscreen.dart';
import '../screens/messagescreen.dart';
import '../screens/schedule.dart';
import '../screens/settingscreen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final _screens = [
    const Mainpage(),
    Messagescreen(),
    const Schedule(),
    const Settingscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Home')
          ],
        ),
      ),
    ));
  }
}
