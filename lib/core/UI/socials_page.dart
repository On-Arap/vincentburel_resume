import 'package:flutter/material.dart';
import '../widgets/widget.dart';
import '../classes/destinations.dart';

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
          // SocialCard(
          //   color: Colors.blue[500],
          //   iconFirst: const Icon(Icons.insert_link),
          //   text: 'Facebook',
          //   iconSecond: const Icon(Icons.insert_link),
          //   url: 'https://facebook.com/',
          // ),
          SocialCard(
            color: Colors.deepPurple[600],
            iconFirst: const Icon(Icons.insert_link),
            text: 'Github',
            iconSecond: const Icon(Icons.insert_link),
            url: 'https://github.com/On-Arap',
          ),
          SocialCard(
            color: Colors.blue[900],
            iconFirst: const Icon(Icons.insert_link),
            text: 'LinkedIn',
            iconSecond: const Icon(Icons.insert_link),
            url: 'https://www.linkedin.com/in/vincent-burel-56b13558/',
          ),
        ],
      ),
    );
  }
}
