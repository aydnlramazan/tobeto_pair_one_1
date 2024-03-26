import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_pair_one_1/blocs/auth_bloc/auth_event.dart';
import 'package:tobeto_pair_one_1/screens/catalog_screen.dart';
import 'package:tobeto_pair_one_1/screens/profile_screen.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/screens/reviews_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            arrowColor: Colors.purple,
            accountName: Text("user"),
            accountEmail: Text("email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white, //0xFF9933FF
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
                      builder: (context) => const ProfileScreen()));
            },
          ),
          ListTile(
            title: const Text('Katalog'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CatalogScreen()));
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FirstOne()));
            },
          ),
          // Add a divider

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
