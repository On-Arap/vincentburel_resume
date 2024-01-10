import 'package:flutter/material.dart';
import '../classes/destinations.dart';
import '../widgets/widget.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GeneralInfoContainer(
            height: 100,
            image: Image.asset('assets/parissmashgang.png'),
            title: 'ParisSmashGang',
            subtitle: 'Tournament Organization Association',
          ),
          const ExtraContainer(),
          const TournamentsContainer(),
        ],
      ),
    );
  }
}
