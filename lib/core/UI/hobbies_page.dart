import 'package:flutter/material.dart';
import '../widgets/widget.dart';
import '../classes/destinations.dart';

class HobbiesPage extends StatefulWidget {
  final Destination destination;
  final List emojis = [
    "🏐",
    "🎮",
    "🚲",
    "🥗",
    "🍻",
    "🍔",
    "🌳",
    "♟",
    "🎨",
    "☕️",
  ];
  final List hobbies = [
    "volleyball",
    "video games",
    "fixe-gear bikes",
    "veggie food",
    "party/afterwork",
    "street food",
    "ecology",
    "chess",
    "tattoo",
    "coffee",
  ];

  HobbiesPage({super.key, required this.destination});

  @override
  State<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends State<HobbiesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: widget.emojis.length,
          itemBuilder: (context, index) {
            return HobbieCard(emoji: widget.emojis[index], hobbie: widget.hobbies[index]);
          },
        ),
      ),
    );
  }
}
