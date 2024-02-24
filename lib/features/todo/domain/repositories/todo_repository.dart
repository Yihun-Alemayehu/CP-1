import 'package:cp_1/core/error/failure.dart';
import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:dartz/dartz.dart';

abstract class TodoRepository {
  // add todo:
  Future<Either<Failure,Todo>> addTodo(Todo todo);

  // edit todo:
 Future<Either<Failure,Todo>> editTodo(Todo todo);

  // delete todo:
 Future<Either<Failure,Todo>> deleteTodo(Todo todo);

  // get all todos:
  Future<Either<Failure,List<Todo>>> getAllTodes();
}