import 'package:flutter/material.dart';
import 'package:med_hub/widgets/todoProvider.dart';
import 'package:med_hub/widgets/todoWidget.dart';
import 'package:provider/provider.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key, required todo});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    return ListView.separated(
      itemCount: todos.length,
      itemBuilder: (context, int index) {
        final todo = todos[index];

        return TodoWidget(todo: todo);
      },
      separatorBuilder: (BuildContext context, int index) => Container(
        height: 8.0,
      ),
    );
  }
}
