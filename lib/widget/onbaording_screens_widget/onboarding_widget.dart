import 'package:flutter/material.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({
    Key? key,
    required this.imageTitle,
    required this.textTitle,
    required this.subtitleText,
  }) : super(key: key);

  final String imageTitle;
  final String textTitle;
  final String subtitleText;

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(widget.imageTitle),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.textTitle,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.subtitleText,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
