part of 'technos_cubit.dart';

class Techno {
  String key;
  String value;

  Techno(this.key, this.value);

  @override
  String toString() {
    return '{ $key, $value }';
  }
}

@immutable
sealed class TechnosState {
  const TechnosState();
}

final class TechnosLoading extends TechnosState {
  const TechnosLoading();
}

final class TechnosLoaded extends TechnosState {
  final List<Techno> technos;

  const TechnosLoaded(this.technos);
}
