import 'package:flutter/material.dart';
import '../widgets/widget.dart';
import '../classes/destinations.dart';

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
          GeneralInfoContainer(
            height: 150,
            image: Image.asset('assets/profil.jpg'),
            title: 'Vincent Burel',
            subtitle: 'Frontend Dev, Flutter enthusiast',
          ),
          const InformationsContainer(),
          const StudiesContainer(),
          const TechnosContainer(),
        ],
      ),
    );
  }
}
