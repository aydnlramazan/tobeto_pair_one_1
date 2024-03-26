import 'package:flutter/material.dart';
import 'package:tobeto_pair_one_1/screens/video_player_screen.dart';

class MentorSessions extends StatelessWidget {
  const MentorSessions({Key? key}) : super(key: key);

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
                            "https://firebasestorage.googleapis.com/v0/b/tobeto-pair-one-1.appspot.com/o/Yaz%C4%B1l%C4%B1mc%C4%B1%20Olmak%20I%CC%87steyenler%20I%CC%87c%CC%A7in%20Tobeto%20I%CC%87le%20Tan%C4%B1s%CC%A7man%C4%B1n%20Tam%20Zaman%C4%B1!.mp4?alt=media&token=68212635-63ba-4c92-a2f1-e180660ce2b3")));
          },
          icon: Image.asset("assets/images/mentor_sessions.png"),
        )
      ],
    );
  }
}
