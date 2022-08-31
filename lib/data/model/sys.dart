import 'package:json_annotation/json_annotation.dart';


part 'sys.g.dart';

@JsonSerializable(explicitToJson: true)
class Sys {
  final int? type;
  final int? id;
  final int? message;
  final String? country;
  final int? sunrise;
  final int? sunset;


  Sys({this.type, this.id, this.message, this.country, this.sunrise, this.sunset }); 

  /// Connect the generated [_$SysFromJson] function to the `fromJson`
  /// factory.
  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  /// Connect the generated [_$SysToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SysToJson(this);
}
