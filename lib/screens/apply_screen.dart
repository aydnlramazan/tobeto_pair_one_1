import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/widget/first_one.dart';
import 'package:tobeto_pair_one_1/widget/my_drawer.dart';

class ApplyScreen extends StatelessWidget {
  const ApplyScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TOBETO',
                    style: TextStyle(
                        color: Color(0xFF9933FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "'ya hoş geldin",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              Text(
                'Seçkin',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  'Yeni nesil öğrenme deneyimi ile Tobeto\nkariyer yolculuğunda senin yanında!',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset("assets/images/istkod.png"),
              Card(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: const Border(
                            left: BorderSide(
                              color: Color.fromARGB(255, 3, 90, 4),
                              width: 10,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'İstanbul Kodluyor \nBilgilendirme',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 3, 90, 4),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                        topLeft: Radius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      'Kabul Edildi',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: Color.fromARGB(255, 3, 90, 4),
                                  ),
                                  Text(
                                      'İstanbul Kodluyor başvuru formu \nonaylandı')
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.done,
                                    color: Color.fromARGB(255, 3, 90, 4),
                                  ),
                                  Text(
                                      'İstanbul Kodluyor belge yükleme formu \nonaylandı')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  surfaceTintColor: Colors.white,
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Card(
                            surfaceTintColor: Colors.white,
                            elevation: 10,
                            child: SizedBox(
                              width: 550,
                              child: InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5),
                                              child: Text(
                                                'Herkes için Kodlama 1D Değerlendirme Sınavı',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.check_box,
                                            color: Colors.green,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 3),
                                        child: Text(
                                          'Herkes için Kodlama 1D',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.alarm_outlined,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: Text(
                                              '45 Dakika',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
