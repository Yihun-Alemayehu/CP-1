import 'package:cp_1/core/error/failure.dart';
import 'package:cp_1/core/utils/usecase.dart';
import 'package:cp_1/features/todo/domain/entities/todo.dart';
import 'package:cp_1/features/todo/domain/repositories/todo_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllTodeUsecase implements Usecase<List<Todo>, NoParams> {
  final TodoRepository repository;

  GetAllTodeUsecase({required this.repository});
  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) async{
    return await repository.getAllTodes();
  }
 

}