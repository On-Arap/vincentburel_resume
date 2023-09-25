import 'package:flutter/material.dart';
import '../components/general_info_container.dart';
import '../constants/destinations.dart';

class SocialsPage extends StatefulWidget {
  final Destination destination;
  const SocialsPage({super.key, required this.destination});

  @override
  State<SocialsPage> createState() => _SocialsPageState();
}

class _SocialsPageState extends State<SocialsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const GeneralInfoContainer(height: 100),
          Divider(height: 50, thickness: 2, indent: 20, endIndent: 20, color: Colors.grey[800]),
        ],
      ),
    );
  }
}
