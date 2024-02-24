import 'package:cp_1/core/error/failure.dart';
import 'package:cp_1/features/todo/data/data_sources/todo_remote_data_source.dart';
import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:cp_1/features/todo/domain/repositories/todo_repository.dart';
import 'package:dartz/dartz.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource remoteDataSource;

  TodoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, Todo>> addTodo(Todo todo) async {
    try {
      final result = await remoteDataSource.addTodoItem(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'sorry, you couldn\'t add the todo'));
    }
  }

  @override
  Future<Either<Failure, Todo>> deleteTodo(Todo todo) async {
    try {
      final result = await remoteDataSource.deleteTodoItem(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'sorry, you couldn\'t delete the todo'));
    }
  }

  @override
  Future<Either<Failure, Todo>> editTodo(Todo todo) async {
    try {
      final result = await remoteDataSource.editTodoItem(todo);
      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'sorry, you couldn\'t edit the todo'));
    }
  }

  @override
  Future<Either<Failure, List<Todo>>> getAllTodes() async {
    try {
      final result = await remoteDataSource.getAllTodeItems();
      return Right(result);
    } catch (e) {
      return Left(Failure(message: 'sorry, you couldn\'t fetch todos'));
    }
  }
}
