part of 'todo_bloc.dart';

@freezed
abstract class TodoEvent with _$TodoEvent {
  const factory TodoEvent.fun() = TodoFunEvent;
}
