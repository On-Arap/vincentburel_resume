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
    return const SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Extras'),
            CircularProgressIndicator(color: Colors.greenAccent),
          ],
        ),
      ),
    );
  }
}
