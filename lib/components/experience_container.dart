import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey, width: 2.0, style: BorderStyle.solid),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/flutter_logo.png',
                width: 50,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Flutter', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('2022-2023', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text('Developppeur Mobile, autodidacte Flutter, build of many differents project to learn and use Flutter'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Stack: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                        Text('Flutter, Dart'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
