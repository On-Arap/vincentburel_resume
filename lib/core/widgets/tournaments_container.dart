import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/bloc/sgg_tournaments/sgg_tournaments_bloc.dart';

class TournamentsContainer extends StatelessWidget {
  const TournamentsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<SggTournamentsBloc, SggTournamentsState>(
        builder: (context, state) {
          if (state is SggTournamentsLoaded) {
            inspect(state.tournaments);
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFF7DB8AC),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Numbers of tournaments: "),
                    Text(state.tournaments.length.toString()),
                  ],
                ),
              ),
            );
          } else {
            context.read<SggTournamentsBloc>().add(SggTournamentsStartLoading());
            return const CircularProgressIndicator(color: Colors.blue);
          }
        },
      ),
    );
  }
}
