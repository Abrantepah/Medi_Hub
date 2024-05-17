// ignore_for_file: file_names, unused_field

import 'package:flutter/material.dart';
import 'package:med_hub/widgets/todoFromWidget.dart';

class AddTodoDialogWidget extends StatefulWidget {
  const AddTodoDialogWidget({super.key});

  @override
  State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Add Todo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          TodoFormWidget(
            onChangedTitle: (title) => setState(() => this.title),
            onChangedDescription: (description) =>
                setState(() => this.description),
            onSavedTodo: () {},
            onValueChangedDescription: (String value) {},
            anChangedDescription: (description) {},
            description: '',
            onValueChangedTitle: (String value) {},
            title: '',
          ),
        ],
      ),
    );
  }
}
