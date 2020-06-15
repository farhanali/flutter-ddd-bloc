import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
abstract class TodoList with _$TodoList {
  const factory TodoList({
    @required String title,
    @required List<Todo> todos,
  }) = _TodoList;

  factory TodoList.fromJson(Map<String, dynamic> json) =>
      _$TodoListFromJson(json);
}

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    @required int id,
    @required String name,
    @required bool done,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
