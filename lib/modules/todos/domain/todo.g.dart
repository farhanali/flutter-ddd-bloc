// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoList _$_$_TodoListFromJson(Map<String, dynamic> json) {
  return _$_TodoList(
    title: json['title'] as String,
    todos: (json['todos'] as List)
        ?.map(
            (e) => e == null ? null : Todo.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TodoListToJson(_$_TodoList instance) =>
    <String, dynamic>{
      'title': instance.title,
      'todos': instance.todos,
    };

_$_Todo _$_$_TodoFromJson(Map<String, dynamic> json) {
  return _$_Todo(
    id: json['id'] as int,
    name: json['name'] as String,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'done': instance.done,
    };
