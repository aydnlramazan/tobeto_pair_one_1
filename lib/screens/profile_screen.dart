import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/profile_screen/egitim_gelisim.dart';
import 'package:tobeto_pair_one_1/screens/profile_screen/katilim_basarilar.dart';
import 'package:tobeto_pair_one_1/screens/profile_screen/kisisel_bilgiler.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/widget/my_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 0, 0, 0),
                        Color.fromARGB(153, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      Text(
                        "Gamze YAŞ",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text(
                        "Flutter 1B",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 16),
                      ProfileManagment(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileManagment extends StatefulWidget {
  const ProfileManagment({Key? key}) : super(key: key);

  @override
  State<ProfileManagment> createState() => _ProfileManagmentState();
}

class _ProfileManagmentState extends State<ProfileManagment> {
  int _inProfileIndex = 0;

  final List<Widget> profileItems = [
    const KisiselBilgiler(),
    const EgitimGelisim(),
    const KatilimBasarilar(),
  ];

  void _onProfileMenuTapped(int index) {
    setState(() {
      _inProfileIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ProfileMenu(
            profileItems: profileItems,
            selectedProfileIndex: _inProfileIndex,
            onProfileItemSelected: _onProfileMenuTapped,
          ),
        ),
        profileItems[_inProfileIndex],
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final List<Widget> profileItems;
  final int selectedProfileIndex;
  final Function(int) onProfileItemSelected;
  const ProfileMenu({
    super.key,
    required this.profileItems,
    required this.selectedProfileIndex,
    required this.onProfileItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          profileItems.length,
          (index) => ElevatedButton(
            onPressed: () {
              onProfileItemSelected(index);
            },
            child: Text(profileItems[index].toString()),
          ),
        ),
      ),
    );
  }
}
