import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey, width: 2.0, style: BorderStyle.solid),
        ),
        child: const Text('Data'),
      ),
    );
  }
}
