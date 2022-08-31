import 'package:weather/data/model/forecast.dart';
import 'package:weather/data/model/location.dart';

abstract class WeatherApi {
  // Future<Forecast> getWeather(Location location);
  // Future<Location> getLocation(String city);
  Future<Forecast> getWeather(String city);
}