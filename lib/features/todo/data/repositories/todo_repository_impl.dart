import 'package:cp_1/features/todo/data/data_sources/todo_remote_data_source.dart';
import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:cp_1/features/todo/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource remoteDataSource;

  TodoRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Todo> addTodo(Todo todo) async{
    final result = await remoteDataSource.addTodoItem(todo);
    return result;
  }

  @override
  Future<Todo> deleteTodo(Todo todo) async{
    final result = await remoteDataSource.deleteTodoItem(todo);
    return result;
  }

  @override
  Future<Todo> editTodo(Todo todo) async{
    final result = await remoteDataSource.editTodoItem(todo);
    return result;
  }

  @override
  Future<List<Todo>> getAllTodes() async{
    final result = await remoteDataSource.getAllTodeItems();
    return result;
  }

}