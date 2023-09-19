import 'package:flutter/material.dart';
import '../constants/destinations.dart';

class HobbiesPage extends StatefulWidget {
  final Destination destination;
  const HobbiesPage({super.key, required this.destination});

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hobbies'),
            CircularProgressIndicator(color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
