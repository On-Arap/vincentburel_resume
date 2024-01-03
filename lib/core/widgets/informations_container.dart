import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/core/datas/cubits/cubit.dart';

class InformationsContainer extends StatelessWidget {
  const InformationsContainer({super.key});

  void infosLoading(BuildContext context) {
    final infosCubit = context.read<InfosCubit>();
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
            child: BlocBuilder<InfosCubit, InfosState>(
              builder: (context, state) {
                if (state is InfosLoading) {
                  infosLoading(context);
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is InfosLoaded) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .25),
                      shrinkWrap: true,
                      children: state.infos.map((info) {
                        var icon;
                        switch (info.key) {
                          case 'age':
                            icon = const Icon(Icons.cake);
                            break;
                          case 'gender':
                            icon = const Icon(Icons.person_pin_sharp);
                            break;
                          case 'nationality':
                            icon = const Icon(Icons.outlined_flag);
                            break;
                          case 'email':
                            icon = const Icon(Icons.email_outlined);
                            break;
                          case 'phone':
                            icon = const Icon(Icons.contact_phone_outlined);
                            break;
                          case 'spoken languages':
                            icon = const Icon(Icons.language_outlined);
                            break;
                          default:
                            icon = const Icon(Icons.cake);
                        }
                        return Row(children: [
                          icon,
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              info.value,
                              style: const TextStyle(fontSize: 14),
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
