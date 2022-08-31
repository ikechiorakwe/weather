import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable(explicitToJson: true)
class Wind {
  final double? speed ;
  final int? degree ;
  


  Wind({ this.degree, this.speed}); 

  /// Connect the generated [_$WindFromJson] function to the `fromJson`
  /// factory.
  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  /// Connect the generated [_$WindToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WindToJson(this);
}
