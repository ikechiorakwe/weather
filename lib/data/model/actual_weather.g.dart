// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actual_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActualWeather _$ActualWeatherFromJson(Map<String, dynamic> json) =>
    ActualWeather(
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ActualWeatherToJson(ActualWeather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
    };
