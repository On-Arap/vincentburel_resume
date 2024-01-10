part of 'sgg_tournaments_bloc.dart';

sealed class SggTournamentsEvent {}

final class SggTournaments extends SggTournamentsEvent {}

final class SggTournamentsStartLoading extends SggTournamentsEvent {}
