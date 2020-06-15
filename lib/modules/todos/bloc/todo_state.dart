part of 'todo_bloc.dart';

@freezed
abstract class TodoState with _$TodoState {
  const factory TodoState.initial() = TodoInitialState;
}
