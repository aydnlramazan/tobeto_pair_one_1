import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {super.key,
      required this.ImageTitle,
      required this.TextTitle,
      required this.SubtitleText,
      required this.NextButton});

  final String ImageTitle;
  final String TextTitle;
  final String SubtitleText;
  final Icon NextButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(ImageTitle),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            TextTitle,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(SubtitleText),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.next_plan,
            color: Colors.purple,
            size: 50,
          ),
        )
      ],
    );
  }
}
