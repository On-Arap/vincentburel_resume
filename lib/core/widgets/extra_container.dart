import 'package:flutter/material.dart';

class ExtraContainer extends StatelessWidget {
  const ExtraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xFF7DB8AC),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('I\'ve created an org in Paris in 2018, to organize and hold video games tournaments, mainly on the game SuperSmashBros Melee'),
            ),
          ),
        ],
      ),
    );
  }
}
