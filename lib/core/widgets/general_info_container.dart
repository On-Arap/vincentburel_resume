import 'package:flutter/material.dart';

class GeneralInfoContainer extends StatelessWidget {
  final double height;

  const GeneralInfoContainer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10.0),
        Hero(
          tag: "ProfilBloc",
          child: Container(
            width: 150,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(color: Colors.grey, width: 3.0, style: BorderStyle.solid),
              image: DecorationImage(fit: BoxFit.contain, image: Image.asset('assets/profil.jpg').image),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        const Text(
          'Vincent Burel',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(height: 5.0),
        const Text(
          'Flutter enthusiast',
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }
}
