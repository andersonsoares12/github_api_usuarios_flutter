import 'package:apigithub/src/models/todo_model.dart';
import 'package:apigithub/src/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);
//usando reatividade
  HomeController([TodoRepository? repository])
      : _repository = repository ?? TodoRepository();

  Future start() async {
    state.value = HomeState.loading;
    try {
      todos = await _repository.fetchTodos();
      state.value = HomeState.success;
    } catch (e) {
      state.value = HomeState.erro;
    }
  }
}

enum HomeState { start, loading, success, erro }
