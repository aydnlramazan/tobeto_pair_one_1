import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/video_player_screen.dart';

class SoftskillCours extends StatelessWidget {
  const SoftskillCours({Key? key}) : super(key: key);

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
                builder: (context) => const VideoPlayerScreen(
                  videoUrl:
                      "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-one-1.appspot.com/o/I%CC%87stanbul%20Kodluyor%20Proje%20As%CC%A7amalar%C4%B1.mp4?alt=media&token=eb2f01db-fc2d-4e06-abcb-2026d699f0e8",
                ),
              ),
            );
          },
          icon: Image.asset("assets/images/softskill_cours.png"),
        )
      ],
    );
  }
}
