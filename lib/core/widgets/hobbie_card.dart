import 'package:flutter/material.dart';

class HobbieCard extends StatelessWidget {
  final String emoji;
  final String hobbie;

  const HobbieCard({
    super.key,
    required this.emoji,
    required this.hobbie,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xFF7DB8AC),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [BoxShadow(offset: Offset(3, 3), blurRadius: 2.0)],
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 30),
              ),
              Text(
                hobbie,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
