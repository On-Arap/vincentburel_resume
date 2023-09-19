import 'package:flutter/material.dart';
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
    return const SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Socials'),
            CircularProgressIndicator(color: Colors.lightBlue),
          ],
        ),
      ),
    );
  }
}
