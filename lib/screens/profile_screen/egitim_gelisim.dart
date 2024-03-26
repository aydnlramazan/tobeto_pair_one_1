import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EgitimGelisim extends StatelessWidget {
  const EgitimGelisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                "Eğitim Hayatım ve Deneyimlerim",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Convallis proin dapibus tempus in. Amet aenean risus nunc id duis. Et eu a laoreet elit morbi magna. Tellus ipsum in est et ullamcorper."),
              )
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
          child: Column(
            children: [
              Text(
                "Yabancı Dillerim",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Convallis proin dapibus tempus in. Amet aenean risus nunc id duis. "),
              )
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
          child: Column(
            children: [
              Text(
                "Serifikalarım",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Convallis proin dapibus tempus in. Amet aenean risus nunc id duis. "),
              )
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
          child: Column(
            children: [
              Text(
                "Yetkinliklerim",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Convallis proin dapibus tempus in. Amet aenean risus nunc id duis. "),
              )
            ],
          ),
        ),
      ],
    );
  }
}
