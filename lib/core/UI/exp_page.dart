import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/bloc/bloc.dart';
import '../widgets/widget.dart';
import '../classes/destinations.dart';

class ExpPage extends StatefulWidget {
  final Destination destination;
  const ExpPage({super.key, required this.destination});

  @override
  State<ExpPage> createState() => _ExpPageState();
}

class _ExpPageState extends State<ExpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<ExperienceBloc, ExperienceState>(
        builder: (context, state) {
          if (state is ExperienceInitial) {
            return const CircularProgressIndicator(
              color: Color.fromARGB(255, 3, 58, 49),
            );
          } else if (state is ExperienceLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: const Center(child: Text("Past Experiences", style: TextStyle(fontWeight: FontWeight.w600))),
                backgroundColor: Color(0xFF033A31),
              ),
              body: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ListView.builder(
                  shrinkWrap: false,
                  itemCount: state.experiences.length,
                  itemBuilder: (BuildContext context, int index) {
                    var exp = state.experiences[index];
                    return ExperienceContainer(
                      image: exp.image,
                      org: exp.org,
                      period: exp.period,
                      jobDesc: exp.jobDesc,
                      stack: exp.stack,
                    );
                  },
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator(color: Colors.red);
          }
        },
      ),
    );
  }
}
