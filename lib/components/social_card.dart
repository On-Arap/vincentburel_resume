import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final Color? color;
  final Icon iconFirst;
  final String text;
  final Icon iconSecond;

  const SocialCard({
    super.key,
    required this.color,
    required this.iconFirst,
    required this.text,
    required this.iconSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconFirst,
              Text(text),
              iconSecond,
            ],
          ),
        ),
      ),
    );
  }
}
