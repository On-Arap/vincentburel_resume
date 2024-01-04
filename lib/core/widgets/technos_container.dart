import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/cubits/cubit.dart';

class TechnosContainer extends StatelessWidget {
  const TechnosContainer({super.key});

  void infosLoading(BuildContext context) {
    final infosCubit = context.read<TechnosCubit>();
    infosCubit.readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xFF62A194),
          ),
          child: BlocBuilder<TechnosCubit, TechnosState>(
            builder: (context, state) {
              if (state is TechnosLoading) {
                infosLoading(context);
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is TechnosLoaded) {
                return Padding(
                  padding: const EdgeInsets.only(top: 40, right: 15.0, bottom: 15.0, left: 15.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: (1 / .4),
                    shrinkWrap: true,
                    children: state.technos.map((info) {
                      var icon = Text(info.key, style: const TextStyle(fontSize: 8));

                      return Row(children: [
                        icon,
                        const SizedBox(width: 10),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              info.value,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        )
                      ]);
                    }).toList(),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
