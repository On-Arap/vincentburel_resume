import 'package:flutter/material.dart';

class GeneralInfoContainer extends StatelessWidget {
  final double height;

  const GeneralInfoContainer({super.key, required this.height});

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
                image: DecorationImage(fit: BoxFit.contain, image: Image.asset('assets/profil.jpg').image),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          const Text(
            'Vincent Burel',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5.0),
          const Text(
            'Flutter enthusiast',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
