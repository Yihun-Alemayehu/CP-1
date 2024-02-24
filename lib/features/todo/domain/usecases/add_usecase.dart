import 'package:cp_1/core/error/failure.dart';
import 'package:cp_1/core/utils/usecase.dart';
import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:cp_1/features/todo/domain/repositories/todo_repository.dart';
import 'package:dartz/dartz.dart';

class AddTodoUsecase implements Usecase<Todo, Params<Todo>>{
  final TodoRepository repository;

  AddTodoUsecase({required this.repository});

  @override
  Future<Either<Failure,Todo>> call(Params todo)async  {
    return await repository.addTodo(todo.data);
  }
}
