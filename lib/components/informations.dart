import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vincentburel_resume/cubits/infos/infos_cubit.dart';

class Informations extends StatelessWidget {
  const Informations({super.key});

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
            height: 200,
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
