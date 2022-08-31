

import 'package:weather/data/model/forecast.dart';
import 'package:weather/data/service/weather.dart';

class ForecastService {
  final WeatherApi weatherApi;
  ForecastService(this.weatherApi);

  Future<Forecast> getWeather(String city) async {
    // final location = await weatherApi.getLocation(city);
    // print("loc:${location.toJson()}");
    // return await weatherApi.getWeather(location);
    return await weatherApi.getWeather(city);
  }
}