
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather/app/constants.dart';
import 'package:weather/data/model/forecast.dart';
import 'package:weather/data/model/location.dart';
import 'package:weather/data/service/weather.dart';



class OpenWeatherMapWeatherApi extends WeatherApi {
  static const endPointUrl = 'https://api.openweathermap.org/data/2.5';
  static const apiKey = api;
  // Forecast? forecastData;
  // Future<Location> getWeather(String city) async {
  //   final requestUrl = '$endPointUrl/weather?q=$city&APPID=$apiKey';
  //   final response = await http.get(Uri.parse(requestUrl));
  //   print("response: ${response.body}");

  //   if (response.statusCode != 200) {
  //     throw Exception(
  //         'error retrieving location for city $city: ${response.statusCode}');
  //   }
  //   print("tion: ${Location.fromJson(jsonDecode(response.body))}");
  //   return Location.fromJson(jsonDecode(response.body));
  // }

  @override
  Future<Forecast> getWeather(String city) async {
    final requestUrl = '$endPointUrl/weather?q=$city&APPID=$apiKey';
    final response = await http.get(Uri.parse(requestUrl));
    print("response: ${response.body}");

    if (response.statusCode != 200) {
      throw Exception(
          'error retrieving location for city $city: ${response.statusCode}');
    }
    print("tion: ${Forecast.fromJson(jsonDecode(response.body))}");
    // forecastData = Forecast.fromJson(jsonDecode(response.body)) ;
    
    
    final v = Forecast.fromJson(jsonDecode(response.body));
    print("forecastData: ${v.toJson()}");
    return v;
  }

 

  
  // Future<Forecast> getWeather(Location location) async {
  //   final requestUrl =
  //       '$endPointUrl/onecall?lat=${location.latitude}&lon=${location.longitude}&exclude=hourly,minutely&APPID=$apiKey';
  //   final response = await http.get(Uri.parse(requestUrl));
  //   print("requestUrl: $requestUrl");
  //   print("response weather: ${response.body}");
  //   if (response.statusCode != 200) {
  //     throw Exception('error retrieving weather: ${response.statusCode}');
  //   }

  //   return Forecast.fromJson(jsonDecode(response.body));
  // }
}