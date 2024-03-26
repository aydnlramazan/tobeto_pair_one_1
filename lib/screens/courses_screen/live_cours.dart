import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/video_player_screen.dart';

class LiveCours extends StatelessWidget {
  const LiveCours({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VideoPlayerScreen(
                    videoUrl:
                        "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-one-1.appspot.com/o/Maas%CC%A7%C4%B1ndan%20Memnun%20Deg%CC%86il%20Misin_%20_%20Seni%20Tobeto%20I%CC%87le%20Tan%C4%B1s%CC%A7t%C4%B1ral%C4%B1m.mp4?alt=media&token=d74341a5-a8f4-43ab-93d5-c80cb82a6ee9"),
              ),
            );
          },
          icon: Image.asset("assets/images/live_cours.png"),
        )
      ],
    );
  }
}
