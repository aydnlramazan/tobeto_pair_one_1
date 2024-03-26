import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KisiselBilgiler extends StatelessWidget {
  const KisiselBilgiler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: const Color.fromRGBO(245, 235, 255, 1),
          child: Row(
            children: [
              Image.asset("assets/images/name_surname.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Ad Soyad"), Text("Gamze Yaş")],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          color: const Color.fromRGBO(245, 235, 255, 1),
          child: Row(
            children: [
              Image.asset("assets/images/born_date.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Doğum Tarihi"), Text("09/10/1995")],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          color: const Color.fromRGBO(245, 235, 255, 1),
          child: Row(
            children: [
              Image.asset("assets/images/email.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Eposta Adresi"),
                    Text("yas_gamze@hotmail.com")
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          color: const Color.fromRGBO(245, 235, 255, 1),
          child: Row(
            children: [
              Image.asset("assets/images/born_date.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Doğum Tarihi"), Text("09/10/1995")],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
          child: Container(
            color: Colors.white,
          ),
        ),
        Container(
          color: Color.fromARGB(255, 194, 234, 205),
          child: Column(
            children: [
              Text(
                "Hakkımda",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Convallis proin dapibus tempus in. Amet aenean risus nunc id duis. Et eu a laoreet elit morbi magna. Tellus ipsum in est et ullamcorper."),
              )
            ],
          ),
        )
      ],
    );
  }
}
