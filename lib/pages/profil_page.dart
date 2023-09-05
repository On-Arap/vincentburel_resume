import 'package:flutter/material.dart';
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
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 5.0, style: BorderStyle.solid),
                  image: DecorationImage(fit: BoxFit.contain, image: Image.asset('assets/profil.jpg').image),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Vincent Burel',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Flutter enthusiast',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
