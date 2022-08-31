import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/model/actual_weather.dart';
import 'package:weather/data/model/current_weather.dart';

part 'coordinate.g.dart';

@JsonSerializable(explicitToJson: true)
class Coordinate {
  final double? lat;
  final double? lng;
  


  Coordinate({ this.lat, this.lng}); 

  /// Connect the generated [_$CoordinateFromJson] function to the `fromJson`
  /// factory.
  factory Coordinate.fromJson(Map<String, dynamic> json) => _$CoordinateFromJson(json);

  /// Connect the generated [_$CoordinateToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CoordinateToJson(this);
}
