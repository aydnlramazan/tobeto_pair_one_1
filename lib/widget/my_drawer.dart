import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_event.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/screens/reviews_screen.dart';
import 'package:tobeto_pair_one_1/screens/video_player_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("user"),
            accountEmail: Text("email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "RA",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            title: const Text('Anasayfa'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FirstOne()));
            },
          ),
          ListTile(
            title: const Text('Değerlendirmeler'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReviewsScreen()));
            },
          ),
          ListTile(
            title: const Text('Profilim'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VideoPlayerScreen(
                            videoUrl: '',
                          )));
            },
          ),
          ListTile(
            title: const Text('Katalog'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: const Text('Takvim'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          ListTile(
            title: const Text('Tobeto'),
            onTap: () {
              // Handle item 2 tap
            },
          ),
          const Divider(), // Add a divider
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // Handle settings tap
            },
          ),
          const Divider(),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(Logout());
              },
              child: const Text("Çıkış Yap"))
        ],
      ),
    );
  }
}
