import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/data/api/weather_api.dart';
import 'package:weather/data/model/actual_weather.dart';
import 'package:weather/data/model/clouds.dart';
import 'package:weather/data/model/coordinate.dart';
import 'package:weather/data/model/current_weather.dart';
import 'package:weather/data/model/forecast.dart';
import 'package:weather/data/model/sys.dart';
import 'package:weather/data/model/wind.dart';
import 'package:weather/data/service/forecast_service.dart';


class ForecastViewModel with ChangeNotifier {
  bool isRequestPending = false;
  bool isWeatherLoaded = false;
  bool isRequestError = false;

  Coordinate? _coord ;
  List<ActualWeather>? _weather;
  String? _base ;
  CurrentWeather? _main ;  
  int? _visibility ;
  Wind? _wind ;
  Clouds? _clouds ;
  int? _dt;
  Sys? _sys;
  int? _timezone;
  int? _id;
  String? _name;
  int? _cod;


  Coordinate? get coord => _coord;
  List<ActualWeather>? get weather => _weather;
  String? get base => _base;
  CurrentWeather? get main => _main;  
  int? get visibility => _visibility;
  Wind? get wind => _wind;
  Clouds? get clouds => _clouds;
  int? get dt => _dt;
  Sys? get sys => _sys;
  int? get timezone => _timezone;
  int? get id => _id;
  String? get name => _name;
  int? get cod => _cod;



  ForecastService? forecastService;

  ForecastViewModel() {
    forecastService =
        ForecastService(OpenWeatherMapWeatherApi());
  }

  Future<Forecast> getLatestWeather(String city, BuildContext context) async {
    setRequestPendingState(true);
    // isRequestError = false;

    Forecast latest = Forecast();
    try {
      await Future.delayed(const Duration(seconds: 1), () => {});

      final lates = await forecastService!
          .getWeather(city);
      print("latest: $latest");
      latest = lates;
      // print("late: ${await forecastService!
      //     .getWeather(city).toString()}");

    } catch (e) {     
    //  isRequestError = true;
     debugPrint("requestError: $e");
    }

    // isWeatherLoaded = true;
    updateModel(latest);
    setRequestPendingState(false);
    notifyListeners();
    return latest;
  }

  void setRequestPendingState(bool isPending) {
   isRequestPending = isPending;
    notifyListeners();
  }

  void updateModel(Forecast forecast) {
    print("forecast.to: ${forecast.toJson()}");
    // if (isRequestError) return;
    _coord = forecast.coord;
    _weather = forecast.weather;
    _base = forecast.base;
    _main = forecast.main;
    _visibility = forecast.visibility;
    _wind = forecast.wind;
    _clouds = forecast.clouds;
    _dt = forecast.dt;
    _sys = forecast.sys;
    _timezone = forecast.timezone;
    _id = forecast.id;
    _name = forecast.name;
    _cod = forecast.cod;

    print("_coord: $_coord");

  }

}