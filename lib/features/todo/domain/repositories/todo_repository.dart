import 'package:cp_1/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
  // add todo:
  Future<Todo> addTodo(Todo todo);

  // edit todo:
  Future<Todo> editTodo(Todo todo);

  // delete todo:
  Future<Todo> deleteTodo(Todo todo);

  // get all todos:
  Future<List<Todo>> getAllTodes();
}