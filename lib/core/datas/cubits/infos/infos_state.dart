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
sealed class InfosState {
  const InfosState();
}

final class InfosLoading extends InfosState {
  const InfosLoading();
}

final class InfosLoaded extends InfosState {
  final List<Information> infos;

  const InfosLoaded(this.infos);
}
