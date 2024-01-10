part of 'sgg_tournaments_bloc.dart';

@immutable
sealed class SggTournamentsEvent {}

final class SggTournamentsStartLoading extends SggTournamentsEvent {}
