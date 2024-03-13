import 'package:flutter/material.dart';

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
          onPressed: () {},
          icon: Image.asset("assets/images/softskill_cours.png"),
        )
      ],
    );
  }
}
