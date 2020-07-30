import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_bloc.freezed.dart';
part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(const TodoInitialState()) {
    _loadTodos();
  }

  void _loadTodos() async {
    // emit(LoadingState)
    // load data
    // emit(LoadedState)
  }
}
