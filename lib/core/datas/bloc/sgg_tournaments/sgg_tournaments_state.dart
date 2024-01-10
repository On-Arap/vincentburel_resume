part of 'sgg_tournaments_bloc.dart';

@immutable
sealed class SggTournamentsState {}

final class SggTournamentsInitial extends SggTournamentsState {}

final class SggTournamentsLoaded extends SggTournamentsState {
  final List<Tournament> tournaments;

  SggTournamentsLoaded({
    required this.tournaments,
  });
}
