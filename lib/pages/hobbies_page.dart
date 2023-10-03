import 'package:flutter/material.dart';
import '../components/hobbie_card.dart';
import '../constants/destinations.dart';

class HobbiesPage extends StatefulWidget {
  final Destination destination;
  final List emojis = ["🥗", "🍻", "🍔", "🏐", "🚲", "🎮", "♟", "🎨", "☕️", "🌳"];
  final List hobbies = ["veggie food", "party/afterwork", "street food", "volleyball", "fixe-gear bikes", "video games", "chess", "tattoo", "coffee", "ecology"];

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
