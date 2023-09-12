part of 'infos_cubit.dart';

class Information {
  String key;
  String value;

  Information(this.key, this.value);

  @override
  String toString() {
    return '{ $key, $value }';
  }
}

@immutable
sealed class InfosState {}

final class InfosLoading extends InfosState {}

final class InfosLoaded extends InfosState {
  final List<Information> infos;

  InfosLoaded(this.infos);
}
