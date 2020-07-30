// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  TodoInitialState initial() {
    return const TodoInitialState();
  }
}

// ignore: unused_element
const $TodoState = _$TodoStateTearOff();

mixin _$TodoState {}

abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

abstract class $TodoInitialStateCopyWith<$Res> {
  factory $TodoInitialStateCopyWith(
          TodoInitialState value, $Res Function(TodoInitialState) then) =
      _$TodoInitialStateCopyWithImpl<$Res>;
}

class _$TodoInitialStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements $TodoInitialStateCopyWith<$Res> {
  _$TodoInitialStateCopyWithImpl(
      TodoInitialState _value, $Res Function(TodoInitialState) _then)
      : super(_value, (v) => _then(v as TodoInitialState));

  @override
  TodoInitialState get _value => super._value as TodoInitialState;
}

class _$TodoInitialState implements TodoInitialState {
  const _$TodoInitialState();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodoInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class TodoInitialState implements TodoState {
  const factory TodoInitialState() = _$TodoInitialState;
}
