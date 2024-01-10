part of 'experience_bloc.dart';

sealed class ExperienceState {}

final class ExperienceInitial extends ExperienceState {}

final class ExperienceLoaded extends ExperienceState {
  final List<Experience> experiences;

  ExperienceLoaded({
    required this.experiences,
  });
}
