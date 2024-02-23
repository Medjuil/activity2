// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToDo _$ToDoFromJson(Map<String, dynamic> json) => ToDo(
      title: json['title'] as String,
      isFinished: json['isFinished'] as bool? ?? false,
    );

Map<String, dynamic> _$ToDoToJson(ToDo instance) => <String, dynamic>{
      'title': instance.title,
      'isFinished': instance.isFinished,
    };
