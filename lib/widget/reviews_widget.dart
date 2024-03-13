import 'package:flutter/material.dart';

class ReviewsWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const ReviewsWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 360,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(
            Radius.circular(34),
          ),
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent, Colors.purple],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.code,
              color: Colors.white,
              size: 33,
            ),
            Text(
              "$text",
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Başla",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
