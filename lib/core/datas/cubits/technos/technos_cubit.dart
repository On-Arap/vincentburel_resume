import 'package:bloc/bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
part 'technos_state.dart';

class TechnosCubit extends Cubit<TechnosState> {
  TechnosCubit() : super(const TechnosLoading());

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/technos.json');
    var data = json.decode(response);
    List<Techno> listTechno = [];
    data.forEach((key, value) {
      listTechno.add(Techno(key, value));
    });
    emit(TechnosLoaded(listTechno));
  }
}
