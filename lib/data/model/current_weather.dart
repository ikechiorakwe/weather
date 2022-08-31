import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/model/actual_weather.dart';

part 'current_weather.g.dart';

@JsonSerializable(explicitToJson: true)
class CurrentWeather {
    
    final double? temp ;
    final double? temp_min;
    final double? temp_max;
    final double? feels_like ;
    final int? pressure;
    final int? humidity ;
    

  CurrentWeather({ this.temp, this.feels_like, this.temp_max, this.temp_min, this.pressure, this.humidity, }); 

  /// Connect the generated [_$CurrentWeatherFromJson] function to the `fromJson`
  /// factory.
  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);

  /// Connect the generated [_$CurrentWeatherToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
