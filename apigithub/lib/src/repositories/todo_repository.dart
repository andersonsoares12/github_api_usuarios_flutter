import 'package:apigithub/src/models/todo_model.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart';

class TodoRepository {
  late Dio dio;
  final url = 'https://api.github.com/users';

  TodoRepository([Dio? client]) : dio = client ?? Dio();
  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => TodoModel.fromJson(json)).toList();
  }
}
