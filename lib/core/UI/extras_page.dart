import 'package:flutter/material.dart';
import 'package:vincentburel_resume/core/widgets/extra_container.dart';
import 'package:vincentburel_resume/core/widgets/general_info_container.dart';
import '../classes/destinations.dart';

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
        ],
      ),
    );
  }
}
