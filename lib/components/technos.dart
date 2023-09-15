import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/cubits/technos/technos_cubit.dart';

class Technos extends StatelessWidget {
  const Technos({super.key});

  void infosLoading(BuildContext context) {
    final infosCubit = context.read<TechnosCubit>();
    infosCubit.readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(color: Colors.grey, width: 2.0, style: BorderStyle.solid),
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
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .4),
                      shrinkWrap: true,
                      children: state.technos.map((info) {
                        var icon;
                        switch (info.key) {
                          default:
                            icon = Text(info.key, style: const TextStyle(fontSize: 8));
                        }
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
      ),
    );
  }
}
