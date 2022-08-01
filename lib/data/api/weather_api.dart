
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/app/constants.dart';
import 'package:weather/data/model/forecast.dart';
import 'package:weather/data/model/location.dart';
import 'package:weather/data/service/weather.dart';



class OpenWeatherMapWeatherApi extends WeatherApi {
  static const endPointUrl = 'https://api.openweathermap.org/data/2.5';
  static const apiKey = api;
  // http.Client httpClient;

  // OpenWeatherMapWeatherApi() {
  //   this.httpClient =  http.Client();
  // }

  Future<Location> getLocation(String city) async {
    final requestUrl = '$endPointUrl/weather?q=$city&APPID=$apiKey';
    final response = await http.get(Uri.parse(requestUrl));

    if (response.statusCode != 200) {
      throw Exception(
          'error retrieving location for city $city: ${response.statusCode}');
    }

    return Location.fromJson(jsonDecode(response.body));
  }

  
  Future<Forecast> getWeather(Location location) async {
    final requestUrl =
        '$endPointUrl/onecall?lat=${location.lat}&lon=${location.lng}&exclude=hourly,minutely&APPID=$apiKey';
    final response = await http.get(Uri.parse(requestUrl));

    if (response.statusCode != 200) {
      throw Exception('error retrieving weather: ${response.statusCode}');
    }

    return Forecast.fromJson(jsonDecode(response.body));
  }
}