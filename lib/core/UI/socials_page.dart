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
          GeneralInfoContainer(
            height: 100,
            image: Image.asset('assets/profil.jpg'),
            title: 'Vincent Burel',
            subtitle: 'Frontend Dev, Flutter enthusiast',
          ), // SocialCard(
          //   color: Colors.blue[500],
          //   iconFirst: const Icon(Icons.insert_link),
          //   text: 'Facebook',
          //   iconSecond: const Icon(Icons.insert_link),
          //   url: 'https://facebook.com/',
          // ),
          SocialCard(
            color: const Color(0xFF906FD3),
            iconFirst: Image.asset('assets/github_logo.png'),
            text: 'Github',
            iconSecond: const Icon(Icons.insert_link),
            url: 'https://github.com/On-Arap',
          ),
          SocialCard(
            color: const Color(0xFF5C95E9),
            iconFirst: Image.asset('assets/linkedin_logo.png'),
            text: 'LinkedIn',
            iconSecond: const Icon(Icons.insert_link),
            url: 'https://www.linkedin.com/in/vincent-burel-56b13558/',
          ),
        ],
      ),
    );
  }
}
