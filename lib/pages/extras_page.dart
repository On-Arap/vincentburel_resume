import 'package:flutter/material.dart';
import '../constants/destinations.dart';

class ExtrasPage extends StatefulWidget {
  final Destination destination;
  const ExtrasPage({super.key, required this.destination});

  @override
  State<ExtrasPage> createState() => _ExpPageState();
}

class _ExpPageState extends State<ExtrasPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/wip.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Work in Progress',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Color(0xFF00A0AA)),
            ),
          ],
        ),
      ),
    );
  }
}
