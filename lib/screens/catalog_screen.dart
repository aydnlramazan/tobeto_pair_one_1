import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/widget/my_drawer.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

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
      body: Column(
        children: [
          Container(
            width: 560,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/catalog_title.png"))),
            child: Column(
              children: [
                Text(
                  "Öğrenmeye Başla",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    TextFormField(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
