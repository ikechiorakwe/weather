import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/model/actual_weather.dart';
import 'package:weather/data/model/clouds.dart';
import 'package:weather/data/model/coordinate.dart';
import 'package:weather/data/model/current_weather.dart';
import 'package:weather/data/model/sys.dart';
import 'package:weather/data/model/wind.dart';

part 'forecast.g.dart';

@JsonSerializable(explicitToJson: true)



class Forecast {
  final Coordinate? coord;
  final List<ActualWeather>? weather;
  final String? base;
  final CurrentWeather? main;  
  final int? visibility;
  final Wind? wind;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;
  
  // {"coord":{"lon":3.2333,"lat":6.6},
  // "weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],
  // "base":"stations",
  // "main":{"temp":298.14,"feels_like":298.99,"temp_min":298.14,"temp_max":298.14,"pressure":1015,"humidity":88},
  // "visibility":8000,
  // "wind":{"speed":3.09,"deg":230},
  // "clouds":{"all":40},
  // "dt":1660813110,
  // "sys":{"type":1,"id":1185,"country":"NG","sunrise":1660801290,"sunset":1660845644},
  // "timezone":3600,
  // "id":2338313,
  // "name":"Ayobo",
  // "cod":200}


  Forecast({this.coord, this.weather, this.base, this.main, this.visibility, this.wind, this.clouds, this.dt, this.sys, this.timezone, this.id, this.name, this.cod}); 

  /// Connect the generated [_$ForecastFromJson] function to the `fromJson`
  /// factory.
  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  /// Connect the generated [_$ForecastToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}
