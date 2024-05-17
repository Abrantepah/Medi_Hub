// ignore_for_file: file_names, recursive_getters

import 'package:flutter/material.dart';
import 'package:med_hub/widgets/todo.dart';

class TodosProvider extends ChangeNotifier {
  final List<Todo> _todos = [
    Todo(createdTime: DateTime.now(), title: 'Walk the Dog', id: ''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Plan family trip to Norway',
        id: ''),
    Todo(
        createdTime: DateTime.now(),
        title: 'Plan Jacobs birthday party',
        id: ''),
    Todo(createdTime: DateTime.now(), title: 'Visiting Dr. Name', id: ''),
    Todo(createdTime: DateTime.now(), title: 'Visiting Dr. Lap', id: ''),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
