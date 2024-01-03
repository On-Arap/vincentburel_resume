part of 'experience_bloc.dart';

class Experience {
  final String image;
  final String org;
  final String period;
  final String jobDesc;
  final String stack;

  Experience({
    required this.image,
    required this.org,
    required this.period,
    required this.jobDesc,
    required this.stack,
  });
}

@immutable
sealed class ExperienceState {}

final class ExperienceInitial extends ExperienceState {}

final class ExperienceLoaded extends ExperienceState {
  final List<Experience> experiences;

  ExperienceLoaded({
    required this.experiences,
  });
}
