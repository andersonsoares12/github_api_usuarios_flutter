import 'package:apigithub/src/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final controller = HomeController();

  test('teste deve trazer uma lista de array todoModel', () async {
    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);
  });
}
