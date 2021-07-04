// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$_$_TodoFromJson(Map<String, dynamic> json) {
  return _$_Todo(
    description: json['description'] as String,
    id: json['id'] as String,
    completed: json['completed'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'completed': instance.completed,
    };
