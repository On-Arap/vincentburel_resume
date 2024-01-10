import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../classes/classe.dart';
import 'package:http/http.dart' as http;
import '../../../utils/startgg_config.dart';

part 'sgg_tournaments_event.dart';
part 'sgg_tournaments_state.dart';

class SggTournamentsBloc extends Bloc<SggTournamentsEvent, SggTournamentsState> {
  SggTournamentsBloc() : super(SggTournamentsInitial()) {
    on<SggTournamentsEvent>((event, emit) {});
    on<SggTournamentsStartLoading>(_loadTournaments);
  }

  void _loadTournaments(SggTournamentsEvent event, Emitter<SggTournamentsState> emit) async {
    final response = await http.post(Uri.parse('https://api.start.gg/gql/alpha'),
        headers: {'Authorization': config["auth"].toString()},
        body: jsonEncode({
          "query": "query TournamentsByOwner(\$ownerId: ID!) {tournaments(query: { filter: {ownerId: \$ownerId}}) {nodes {id name slug}}}",
          "variables": {"ownerId": 610919}
        }));
    inspect(response);
    final Map<String, dynamic> responseJson = jsonDecode(response.body);
    List<Tournament> listedTournies = responseJson["data"]["tournaments"]["nodes"].map<Tournament>((e) => Tournament(e["id"], e["name"], e["slug"])).toList();

    // Bouchon Data
    // List tournies = [
    //   {"id": 615420, "name": "PSG Jam Session #2", "slug": "tournament/psg-jam-session-2"},
    //   {"id": 605071, "name": "PSG Jam Session", "slug": "tournament/psg-jam-session"},
    //   {"id": 511064, "name": "Pepite Stadium - Melee #8 - DERNIER DE LA SAISON", "slug": "tournament/pepite-stadium-melee-8-dernier-de-la-saison"},
    // ];

    // List<Tournament> listedTournies = tournies.map((e) => Tournament(e["id"], e["name"], 'test')).toList();
    emit(SggTournamentsLoaded(tournaments: listedTournies));
  }
}
