import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/model/actual_weather.dart';
import 'package:weather/data/model/clouds.dart';
import 'package:weather/data/model/coordinate.dart';
import 'package:weather/data/model/current_weather.dart';
import 'package:weather/data/model/sys.dart';
import 'package:weather/data/model/wind.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast {
  final Coordinate? coord;
  final List<ActualWeather>? weather;
  final String? base;
  final CurrentWeather? main ;  
  final int? visibility;
  final Wind? wind;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final String? timezone;
  final int? id;
  final String? name;
  final int? cod;
  


  Forecast({ this.coord, this.weather, this.base, this.main, this.visibility, this.wind, this.clouds, this.dt, this.sys, this.timezone, 
  this.id, this.name, this.cod}); 

  /// Connect the generated [_$ForecastFromJson] function to the `fromJson`
  /// factory.
  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  /// Connect the generated [_$ForecastToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
