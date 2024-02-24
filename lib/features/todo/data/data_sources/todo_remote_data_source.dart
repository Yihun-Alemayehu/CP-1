import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  @override
  Future<Todo> addTodoItem(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .set(todo.toMap());
    return todo;
  }

  @override
  Future<Todo> deleteTodoItem(Todo todo) async {
    await FirebaseFirestore.instance.collection('todos').doc(todo.id).delete();
    return todo;
  }

  @override
  Future<Todo> editTodoItem(Todo todo) async {
    await FirebaseFirestore.instance
        .collection('todos')
        .doc(todo.id)
        .update(todo.toMap());
    return todo;
  }

  @override
  Future<List<Todo>> getAllTodeItems() async {
    final todosData =
        await FirebaseFirestore.instance.collection('todos').get();
    return todosData.docs.map((item) => Todo.fromMap(item.data())).toList();
  }
}
