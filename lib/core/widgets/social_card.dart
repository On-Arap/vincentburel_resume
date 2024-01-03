import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialCard extends StatelessWidget {
  final Color? color;
  final Icon iconFirst;
  final String text;
  final Icon iconSecond;
  final String url;

  const SocialCard({
    super.key,
    required this.color,
    required this.iconFirst,
    required this.text,
    required this.iconSecond,
    required this.url,
  });

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: _launchUrl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconFirst,
                Text(text),
                iconSecond,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
