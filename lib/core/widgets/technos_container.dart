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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xFF7DB8AC),
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
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      height: 160,
                      child: ListView.builder(
                        shrinkWrap: false,
                        itemCount: state.technos.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 40,
                            child: Row(
                              children: [
                                Text(state.technos[index].key, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                const SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    state.technos[index].value,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
