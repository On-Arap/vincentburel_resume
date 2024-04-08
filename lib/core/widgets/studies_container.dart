import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/cubits/cubit.dart';

class StudiesContainer extends StatelessWidget {
  const StudiesContainer({super.key});

  void infosLoading(BuildContext context) {
    final infosCubit = context.read<StudiesCubit>();
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
              boxShadow: [BoxShadow(offset: Offset(3, 3), blurRadius: 2.0)],
            ),
            child: BlocBuilder<StudiesCubit, StudiesState>(
              builder: (context, state) {
                if (state is StudiesLoading) {
                  infosLoading(context);
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is StudiesLoaded) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    child: SizedBox(
                      height: 60,
                      child: ListView.builder(
                        shrinkWrap: false,
                        itemCount: state.studies.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 30,
                            child: Row(
                              children: [
                                Text(state.studies[index].key, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                const SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    state.studies[index].value,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
