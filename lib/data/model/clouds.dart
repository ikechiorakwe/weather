import 'package:json_annotation/json_annotation.dart';


part 'clouds.g.dart';

@JsonSerializable(explicitToJson: true)
class Clouds {
  final int? all ;


  Clouds({ this.all}); 

  /// Connect the generated [_$CloudsFromJson] function to the `fromJson`
  /// factory.
  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  /// Connect the generated [_$CloudsToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}
