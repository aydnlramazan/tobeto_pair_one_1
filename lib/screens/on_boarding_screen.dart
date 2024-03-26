import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tobeto_pair_one_1/screens/auth_screen.dart';
import 'package:tobeto_pair_one_1/widget/onbaording_screens_widget/onboarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  int _currentPageIndex = 0; // Eklediğimiz değişken

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: const [
                OnboardingWidget(
                  imageTitle: 'assets/images/onboarding_1.png',
                  textTitle: 'Canlı derslere katıl',
                  subtitleText:
                      'Anlamadığın yerleri, eğitmene anlık olarak sorabilirsin. Her dersin sonunda verilen ödevlerle birlikte konuları pekiştirebileceksin.',
                ),
                OnboardingWidget(
                  imageTitle: "assets/images/onboarding_2.png",
                  textTitle: 'Mentor oturumları ile iş dünyasına hazırlan',
                  subtitleText:
                      'Alanında uzman isimlerin, deneyimlerini paylaştığı online oturumlarda, iş dünyasını yakından tanıyacaksın.',
                ),
                OnboardingWidget(
                  imageTitle: "assets/images/onboarding_3.png",
                  textTitle: "Softskill dersler ile kariyerine yön ver",
                  subtitleText:
                      "Yalnızca mesleki eğitimde değil, iş hayatında edinmek gereken tüm bilgi ve becerilerde Tobeto yanında!",
                ),
                OnboardingWidget(
                  imageTitle: "assets/images/onboarding_4.png",
                  textTitle: "Hayalindeki işe giden ilk adımı at",
                  subtitleText:
                      "Hayalindeki teknoloji kariyeri için, tek yapman gereken Tobeto’ya ücretsiz kayıt olmak.",
                ),
              ],
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if (_currentPageIndex < 3) {
                            controller.animateToPage(
                              _currentPageIndex + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AuthScreen()),
                            );
                          }
                        });
                      },
                      child: const Column(
                        children: [
                          Text("ATLA"),
                          Icon(Icons.next_plan),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: const WormEffect(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
