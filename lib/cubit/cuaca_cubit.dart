import 'package:bloc/bloc.dart';
import 'package:democuaca/model/cuaca_model.dart';
import 'package:democuaca/request/cuaca_request.dart';
import 'package:meta/meta.dart';

part 'cuaca_state.dart';

class CuacaCubit extends Cubit<CuacaState> {
  CuacaCubit() : super(CuacaInitial());

  CuacaRequest cuacaRequest = CuacaRequest();
  CuacaModel cuacaModel = CuacaModel();

  getCurrentWeatherData() async {
    cuacaModel = await cuacaRequest.getCurrentWeather();
    print(cuacaModel);
    emit(CurrentWeather(cuacaModel));
  }
}
