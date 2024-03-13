import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/auth_screen.dart';
import 'package:tobeto_pair_one_1/widget/onbaording_screens_widget/onboarding_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          onPageChanged: (int pageindex) {
            if (pageindex > 3) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const AuthScreen()));
            }
          },
          children: const [
            OnboardingWidget(
              ImageTitle: "assets/images/onboarding_1.png",
              TextTitle: 'Canlı derslere katıl',
              SubtitleText:
                  'Anlamadığın yerleri ,eğitmene anlık olarak sorabilirsin. Her dersin sonunda verilen ödevlerle birlikte konuları pekiştirebileceksin.',
              NextButton: Icon(Icons.next_plan),
            ),
            OnboardingWidget(
              ImageTitle: "assets/images/onboarding_2.png",
              TextTitle: ' Mentor oturumları ile iş dünyasına hazırlan',
              SubtitleText:
                  'Alanında uzman isimlerin, deneyimlerini paylaştığı online oturumlarda, iş dünyasını yakından tanıyacaksın .',
              NextButton: Icon(Icons.next_plan),
            ),
            OnboardingWidget(
                ImageTitle: "assets/images/onboarding_3.png",
                TextTitle: "Softskill dersler ile kariyerine yön ver",
                SubtitleText:
                    "Yalnızca mesleki eğitimde değil , iş hayatında edinmek gereken tüm bilgi ve becerilerde Tobeto yanında !",
                NextButton: Icon(Icons.next_plan)),
            OnboardingWidget(
                ImageTitle: "assets/images/onboarding_4.png",
                TextTitle: "Hayalindeki işe giden ilk adımı at",
                SubtitleText:
                    "Hayalindeki teknoloji kariyeri için,tek yapman gereken Tobeto’ya  ücretsiz kayıt olmak. . ",
                NextButton: Icon(Icons.next_plan)),
          ],
        ),
      ),
    );
  }
}
