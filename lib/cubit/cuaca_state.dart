part of 'cuaca_cubit.dart';

@immutable
abstract class CuacaState {}

class CuacaInitial extends CuacaState {}

class CurrentWeather extends CuacaState {
  final CuacaModel data;
  CurrentWeather(this.data);
}
