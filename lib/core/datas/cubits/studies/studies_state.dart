part of 'studies_cubit.dart';

class Study {
  String key;
  String value;

  Study(this.key, this.value);

  @override
  String toString() {
    return '{ $key, $value }';
  }
}

@immutable
sealed class StudiesState {
  const StudiesState();
}

final class StudiesLoading extends StudiesState {
  const StudiesLoading();
}

final class StudiesLoaded extends StudiesState {
  final List<Study> studies;

  const StudiesLoaded(this.studies);
}
