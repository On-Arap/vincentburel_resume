import 'package:flutter/material.dart';
import '../components/experience_container.dart';
import '../constants/destinations.dart';

class ExpPage extends StatefulWidget {
  final Destination destination;
  const ExpPage({super.key, required this.destination});

  @override
  State<ExpPage> createState() => _ExpPageState();
}

class _ExpPageState extends State<ExpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const ExperienceContainer();
      },
    ));
  }
}
