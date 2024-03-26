import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        body: SingleChildScrollView(
          child: Center(
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
                      "lerini ücretsiz ölç,",
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(141, 81, 169, 1),
                          Color.fromRGBO(178, 0, 240, 0.56),
                          Color.fromRGBO(130, 0, 152, 0.75)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Tobeto İşte Başarı Modeli",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "80 soru ile yetkinliklerini",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                " ölç,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "önerilen eğitimleri ",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "tamamla",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "rozetini ",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "kazan",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Raporu Görüntüle"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(95, 53, 215, 0.87),
                          Color.fromRGBO(178, 0, 240, 0.61),
                          Color.fromRGBO(14, 183, 221, 0.7)
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Text(
                            "Yazılımda Başarı Testi",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Çoktan seçmeli ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Text(
                            "sorular ile teknik bilgini",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "text et",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            ">>>",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
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
                    ReviewsWidget(
                      icon: Icons.code,
                      text: "M.SQL Server",
                      onPressed: () {},
                    ),
                    ReviewsWidget(
                      icon: Icons.code,
                      text: "DT Programlama",
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
