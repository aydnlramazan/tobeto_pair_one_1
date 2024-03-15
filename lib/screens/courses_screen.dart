import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/courses_screen/asenkron_cours.dart';
import 'package:tobeto_pair_one_1/screens/courses_screen/code_academy.dart';
import 'package:tobeto_pair_one_1/screens/courses_screen/live_cours.dart';
import 'package:tobeto_pair_one_1/screens/courses_screen/mentor_sessions.dart';
import 'package:tobeto_pair_one_1/screens/softskill_cours.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/widget/my_drawer.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  //pushReplacement geri butonu koymadan diğer sayfaya geçer!
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstOne(),
                  ),
                );
              },
              child: Image.asset("assets/images/appbar.png"),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      body: StateMenu(),
    );
  }
}

class StateMenu extends StatefulWidget {
  @override
  State<StateMenu> createState() => _StateMenuState();
}

class _StateMenuState extends State<StateMenu> {
  int _inIndex = 0;

  final List<Widget> menuItems = [
    const LiveCours(),
    const AsenkronCours(),
    const MentorSessions(),
    const SoftskillCours(),
    const CodeAcademy(),
  ];

  void _onMenuTapped(int index) {
    setState(() {
      _inIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyHorizontalMenu(
          menuItems: menuItems,
          selectedIndex: _inIndex,
          onItemSelected: _onMenuTapped,
        ),
        Expanded(
          child: menuItems[_inIndex], // Seçilen içeriği göster
        ),
      ],
    );
  }
}

class MyHorizontalMenu extends StatelessWidget {
  final List<Widget> menuItems;
  final int selectedIndex;
  final Function(int) onItemSelected;

  const MyHorizontalMenu({
    required this.menuItems,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          menuItems.length,
          (index) => Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                onItemSelected(index); // Seçilen öğeyi belirt
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: selectedIndex == index
                    ? Color.fromARGB(
                        141, 194, 1, 232) // Seçili öğe ise mavi arkaplan
                    : const Color.fromARGB(
                        175, 92, 255, 1), // Diğer öğeler gri arkaplan
              ),
              child: Text(menuItems[index].toString()),
            ),
          ),
        ),
      ),
    );
  }
}
