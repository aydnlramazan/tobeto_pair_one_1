import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/apply_screen.dart';
import 'package:tobeto_pair_one_1/screens/courses_screen.dart';
import 'package:tobeto_pair_one_1/screens/home_screen.dart';
import 'package:tobeto_pair_one_1/screens/notice_screen.dart';
import 'package:tobeto_pair_one_1/screens/poll_screen.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  _MyNavigationState createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    const ApplyScreen(),
    const CoursesScreen(),
    const HomeScreen(),
    const NoticeScreen(),
    const PollScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_sharp), label: 'Başvurular'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cast_for_education), label: 'Eğitimler'),
          BottomNavigationBarItem(
              icon: Icon(Icons.task_outlined), label: 'TOBETO'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active), label: 'Duyurular'),
          BottomNavigationBarItem(
              icon: Icon(Icons.poll_outlined), label: 'Anketler'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.purpleAccent,
        backgroundColor: const Color.fromARGB(255, 228, 168, 239),
      ),
    );
  }
}
