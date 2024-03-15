import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/widget/my_drawer.dart';
import 'package:tobeto_pair_one_1/widget/reviews_widget.dart';

class ReviewsScreen extends StatelessWidget {
  //final examBloc = ExamBloc();
  ReviewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Center(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yetkinlik",
                    style: TextStyle(color: Colors.purple, fontSize: 28),
                  ),
                  Text(
                    "likleirni ücretsiz ölç,",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "bilgi",
                    style: TextStyle(color: Colors.purple, fontSize: 28),
                  ),
                  Text(
                    "lerini test et.",
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.purple, Colors.pink])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tobeto İşte Başarı Modeli",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        """  80 soru ile yetkinliklerini ölç,
  önerilen eğitimeleri tamamla rozetini kazan""",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              ReviewsWidget(
                icon: Icons.code,
                text: "Front End",
                onPressed: () {},
              ),
              ReviewsWidget(
                icon: Icons.code,
                text: "Full Stack",
                onPressed: () {},
              ),
              ReviewsWidget(
                icon: Icons.code,
                text: "Back End",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
