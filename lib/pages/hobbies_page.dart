import 'package:flutter/material.dart';
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
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: widget.emojis.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0x55000000),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.emojis[index],
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        widget.hobbies[index],
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
