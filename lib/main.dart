import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/datas/bloc/bloc.dart';
import 'core/utils/color_scheme.dart';
import 'core/datas/cubits/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<InfosCubit>(
            create: (BuildContext context) => InfosCubit(),
          ),
          BlocProvider<TechnosCubit>(
            create: (BuildContext context) => TechnosCubit(),
          ),
          BlocProvider<ExperienceBloc>(
            create: (_) => ExperienceBloc()..add(LoadingExperience()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme,
          ),
          home: const HomePage(),
        ),
      ),
    );
  }
}
