import 'package:bloc/bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
part 'studies_state.dart';

class StudiesCubit extends Cubit<StudiesState> {
  StudiesCubit() : super(const StudiesLoading());

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/studies.json');
    var data = json.decode(response);
    List<Study> listStudy = [];
    data.forEach((key, value) {
      listStudy.add(Study(key, value));
    });

    emit(StudiesLoaded(listStudy));
  }
}
