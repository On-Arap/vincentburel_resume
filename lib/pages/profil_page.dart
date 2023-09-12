import 'package:flutter/material.dart';
import 'package:vincentburel_resume/constant/informations.dart';
import '../constant/destinations.dart';

class ProfilPage extends StatefulWidget {
  final Destination destination;
  const ProfilPage({super.key, required this.destination});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              const SizedBox(height: 10.0),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.secondary,
                  border: Border.all(color: Colors.grey, width: 3.0, style: BorderStyle.solid),
                  image: DecorationImage(fit: BoxFit.contain, image: Image.asset('assets/profil.jpg').image),
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
          ),
          Divider(height: 50, thickness: 2, indent: 20, endIndent: 20, color: Colors.grey[800]),
          const Informations(),
        ],
      ),
    );
  }
}
