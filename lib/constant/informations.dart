import 'package:flutter/material.dart';

class Informations extends StatefulWidget {
  const Informations({super.key});

  @override
  State<Informations> createState() => InformationStates();
}

class InformationStates extends State<Informations> {
  late Map data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(color: Colors.grey, width: 2.0, style: BorderStyle.solid),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (1 / .3),
                shrinkWrap: true,
                children: const [
                  Row(children: [Icon(Icons.cake), SizedBox(width: 10), Expanded(child: Text("32", style: TextStyle(fontSize: 12)))]),
                  Row(children: [Icon(Icons.person_pin_sharp), SizedBox(width: 10), Expanded(child: Text("M", style: TextStyle(fontSize: 12)))]),
                  Row(children: [Icon(Icons.outlined_flag), SizedBox(width: 10), Expanded(child: Text("FR", style: TextStyle(fontSize: 12)))]),
                  Row(children: [Icon(Icons.email_outlined), SizedBox(width: 10), Expanded(child: Text("onarap95@gmail.com", style: TextStyle(fontSize: 12)))]),
                  Row(children: [Icon(Icons.contact_phone_outlined), SizedBox(width: 10), Expanded(child: Text("0674707763", style: TextStyle(fontSize: 12)))]),
                  Row(children: [Icon(Icons.language_outlined), SizedBox(width: 10), Expanded(child: Text("FR, EN", style: TextStyle(fontSize: 12)))]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
