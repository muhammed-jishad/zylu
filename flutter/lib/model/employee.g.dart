// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

employees _$employeesFromJson(Map<String, dynamic> json) => employees(
  response: json['response'] == null
      ? null
      : Response.fromJson(json['response'] as Map<String, dynamic>),
);

Map<String, dynamic> _$employeesToJson(employees instance) => <String, dynamic>{
  'response': instance.response,
};
