import 'package:apigithub/src/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final repository = TodoRepository();

  test('teste deve trazer uma lista de array todoModel', () async {
    final lista = await repository.fetchTodos();
    print(lista[0].id);
  });
}
