import 'package:flutter/material.dart';
import 'package:vincentburel_resume/cubits/infos/infos_cubit.dart';
import 'package:vincentburel_resume/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/color_scheme.dart';

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
