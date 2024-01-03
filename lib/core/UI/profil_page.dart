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
          const GeneralInfoContainer(height: 150),
          Divider(height: 50, thickness: 2, indent: 20, endIndent: 20, color: Colors.grey[800]),
          const InformationsContainer(),
          const TechnosContainer(),
        ],
      ),
    );
  }
}
