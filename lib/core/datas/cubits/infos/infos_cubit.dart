import 'package:bloc/bloc.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
part 'infos_state.dart';

class InfosCubit extends Cubit<InfosState> {
  InfosCubit() : super(const InfosLoading());

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/infos.json');
    var data = json.decode(response);
    List<Information> listInfo = [];
    data.forEach((key, value) {
      listInfo.add(Information(key, value));
    });
    emit(InfosLoaded(listInfo));
  }
}
