import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/model/current_weather.dart';

part 'actual_weather.g.dart';

@JsonSerializable()
class ActualWeather {
  final int? id ;
  final String? main ;
  final String? description;
  

  ActualWeather({ this.id, this.main, this.description }); 

  /// Connect the generated [_$ActualWeatherFromJson] function to the `fromJson`
  /// factory.
  factory ActualWeather.fromJson(Map<String, dynamic> json) => _$ActualWeatherFromJson(json);

  /// Connect the generated [_$ActualWeatherToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ActualWeatherToJson(this);
}
