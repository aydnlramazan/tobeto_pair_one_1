import 'package:flutter/material.dart';

class KatilimBasarilar extends StatelessWidget {
  const KatilimBasarilar({Key? key}) : super(key: key);

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
          color: Color.fromARGB(255, 211, 127, 230),
          child: Column(
            children: [
              Text(
                "Tobeto Seviye Testlerim",
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: const Color.fromRGBO(245, 235, 255, 1),
                  child: Row(
                    children: [
                      Text("Herkes için kodlama değerlendirme sınavı 1C"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("12-10-2023"), Text("Not:80")],
                      )
                    ],
                  ),
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
          color: Colors.white,
          width: 450,
          child: Center(
            child: Text(
              "Yetkinliklerim",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
        ),
        Column(
          children: [
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                // Her eleman için bir widget döndürün
                return GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
