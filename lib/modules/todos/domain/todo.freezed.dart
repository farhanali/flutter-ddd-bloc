// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TodoList _$TodoListFromJson(Map<String, dynamic> json) {
  return _TodoList.fromJson(json);
}

class _$TodoListTearOff {
  const _$TodoListTearOff();

  _TodoList call({@required String title, @required List<Todo> todos}) {
    return _TodoList(
      title: title,
      todos: todos,
    );
  }
}

// ignore: unused_element
const $TodoList = _$TodoListTearOff();

mixin _$TodoList {
  String get title;
  List<Todo> get todos;

  Map<String, dynamic> toJson();
  $TodoListCopyWith<TodoList> get copyWith;
}

abstract class $TodoListCopyWith<$Res> {
  factory $TodoListCopyWith(TodoList value, $Res Function(TodoList) then) =
      _$TodoListCopyWithImpl<$Res>;
  $Res call({String title, List<Todo> todos});
}

class _$TodoListCopyWithImpl<$Res> implements $TodoListCopyWith<$Res> {
  _$TodoListCopyWithImpl(this._value, this._then);

  final TodoList _value;
  // ignore: unused_field
  final $Res Function(TodoList) _then;

  @override
  $Res call({
    Object title = freezed,
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

abstract class _$TodoListCopyWith<$Res> implements $TodoListCopyWith<$Res> {
  factory _$TodoListCopyWith(_TodoList value, $Res Function(_TodoList) then) =
      __$TodoListCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<Todo> todos});
}

class __$TodoListCopyWithImpl<$Res> extends _$TodoListCopyWithImpl<$Res>
    implements _$TodoListCopyWith<$Res> {
  __$TodoListCopyWithImpl(_TodoList _value, $Res Function(_TodoList) _then)
      : super(_value, (v) => _then(v as _TodoList));

  @override
  _TodoList get _value => super._value as _TodoList;

  @override
  $Res call({
    Object title = freezed,
    Object todos = freezed,
  }) {
    return _then(_TodoList(
      title: title == freezed ? _value.title : title as String,
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

@JsonSerializable()
class _$_TodoList implements _TodoList {
  const _$_TodoList({@required this.title, @required this.todos})
      : assert(title != null),
        assert(todos != null);

  factory _$_TodoList.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoListFromJson(json);

  @override
  final String title;
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoList(title: $title, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoList &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(todos);

  @override
  _$TodoListCopyWith<_TodoList> get copyWith =>
      __$TodoListCopyWithImpl<_TodoList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoListToJson(this);
  }
}

abstract class _TodoList implements TodoList {
  const factory _TodoList(
      {@required String title, @required List<Todo> todos}) = _$_TodoList;

  factory _TodoList.fromJson(Map<String, dynamic> json) = _$_TodoList.fromJson;

  @override
  String get title;
  @override
  List<Todo> get todos;
  @override
  _$TodoListCopyWith<_TodoList> get copyWith;
}

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call({@required int id, @required String name, @required bool done}) {
    return _Todo(
      id: id,
      name: name,
      done: done,
    );
  }
}

// ignore: unused_element
const $Todo = _$TodoTearOff();

mixin _$Todo {
  int get id;
  String get name;
  bool get done;

  Map<String, dynamic> toJson();
  $TodoCopyWith<Todo> get copyWith;
}

abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({int id, String name, bool done});
}

class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, bool done});
}

class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object done = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

@JsonSerializable()
class _$_Todo implements _Todo {
  const _$_Todo({@required this.id, @required this.name, @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(done != null);

  factory _$_Todo.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool done;

  @override
  String toString() {
    return 'Todo(id: $id, name: $name, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {@required int id, @required String name, @required bool done}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get done;
  @override
  _$TodoCopyWith<_Todo> get copyWith;
}
