import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vincentburel_resume/core/datas/bloc/sgg_tournaments/sgg_tournaments_bloc.dart';
import 'home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/datas/bloc/bloc.dart';
import 'core/utils/color_scheme.dart';
import 'core/datas/cubits/cubit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme, fontFamily: 'MartelSans'),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme, fontFamily: 'MartelSans'),
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<InfosCubit>(
            create: (BuildContext context) => InfosCubit(),
          ),
          BlocProvider<TechnosCubit>(
            create: (BuildContext context) => TechnosCubit(),
          ),
          BlocProvider<StudiesCubit>(
            create: (BuildContext context) => StudiesCubit(),
          ),
          BlocProvider<ExperienceBloc>(
            create: (_) => ExperienceBloc()..add(LoadingExperience()),
          ),
          BlocProvider<SggTournamentsBloc>(
            create: (_) => SggTournamentsBloc(),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
