import 'package:flutter/material.dart';
import '../components/general_info_container.dart';
import '../components/informations_container.dart';
import '../components/technos_container.dart';
import '../constants/destinations.dart';

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
          const GeneralInfoContainer(height: 150),
          Divider(height: 50, thickness: 2, indent: 20, endIndent: 20, color: Colors.grey[800]),
          const InformationsContainer(),
          const TechnosContainer(),
        ],
      ),
    );
  }
}
