import 'package:flutter/material.dart';

class GeneralInfoContainer extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;

  final double height;

  const GeneralInfoContainer({
    super.key,
    required this.height,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF62A194),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Hero(
            tag: "ProfilBloc",
            child: Container(
              width: 150,
              height: height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 5,
                  color: const Color(0xFF7DB8AC),
                ),
                image: DecorationImage(fit: BoxFit.contain, image: image.image),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5.0),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
