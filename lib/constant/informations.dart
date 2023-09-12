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
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: (1 / .3),
              shrinkWrap: true,
              children: const [
                ListTile(leading: Text("age"), title: Text("32", style: TextStyle(fontSize: 12))),
                ListTile(leading: Text("gender"), title: Text("M")),
                ListTile(leading: Text("nationality"), title: Text("FR")),
                ListTile(leading: Text("email"), title: Text("onarap95@gmail.com", style: TextStyle(fontSize: 12))),
                ListTile(leading: Text("phone"), title: Text("0674707763", style: TextStyle(fontSize: 12))),
                ListTile(leading: Text("spoken languages"), title: Text("FR, EN")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
