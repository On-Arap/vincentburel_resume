import 'package:flutter/material.dart';

class ExperienceContainer extends StatelessWidget {
  final String image;
  final String org;
  final String period;
  final String jobDesc;
  final String stack;

  const ExperienceContainer({
    super.key,
    required this.image,
    required this.org,
    required this.period,
    required this.jobDesc,
    required this.stack,
  });

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
              child: Image.network(image, width: 50),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(org, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(period, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(jobDesc, style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text('Stack: ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(stack),
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
