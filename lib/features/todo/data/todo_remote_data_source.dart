import 'package:cp_1/features/todo/domain/entities/todo.dart';

abstract class TodoRemoteDataSource {
  // add todo:
  Future<Todo> addTodoItem(Todo todo);

  // edit todo:
  Future<Todo> editTodoItem(Todo todo);

  // delete todo:
  Future<Todo> deleteTodoItem(Todo todo);

  // get all todos:
  Future<List<Todo>> getAllTodeItems();
}

class TodoRemoteDataSourceImpl implements TodoRemoteDataSource{
  
  @override
  Future<Todo> addTodoItem(Todo todo) async{
    // TODO: implement addTodoItem
    throw UnimplementedError();
  }

  @override
  Future<Todo> deleteTodoItem(Todo todo) async{
    // TODO: implement deleteTodoItem
    throw UnimplementedError();
  }

  @override
  Future<Todo> editTodoItem(Todo todo) async{
    // TODO: implement editTodoItem
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAllTodeItems() async{
    // TODO: implement getAllTodeItems
    throw UnimplementedError();
  }

}