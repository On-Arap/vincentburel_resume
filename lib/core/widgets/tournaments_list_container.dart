import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/bloc/sgg_tournaments/sgg_tournaments_bloc.dart';

class TournamentsListContainer extends StatelessWidget {
  const TournamentsListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<SggTournamentsBloc, SggTournamentsState>(
        builder: (context, state) {
          if (state is SggTournamentsLoaded) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xFF7DB8AC),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: state.tournaments.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.network(state.tournaments[index].image),
                          title: Text(state.tournaments[index].name),
                        ),
                      );
                    },
                  ),
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
