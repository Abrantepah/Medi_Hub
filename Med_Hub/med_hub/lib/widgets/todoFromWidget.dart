// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onValueChangedTitle;
  final ValueChanged<String> onValueChangedDescription;
  final VoidCallback onSavedTodo;
  const TodoFormWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.onValueChangedTitle,
      required this.onValueChangedDescription,
      required this.onSavedTodo,
      required void Function(dynamic description) anChangedDescription,
      required void Function(dynamic description) onChangedDescription,
      required void Function(dynamic title) onChangedTitle});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTile(),
          const SizedBox(
            height: 10,
          ),
          buildDescription(),
          const SizedBox(height: 10),
          buildButton(),
        ],
      ),
    );
  }

  Widget buildTile() => TextFormField(
        initialValue: title,
        onChanged: onValueChangedTitle,
        validator: (title) {
          if (title!.isEmpty) {
            return 'The title cannot be empty';
          }
          return null;
        },
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Title'),
      );

  Widget buildDescription() => TextFormField(
        keyboardType: TextInputType.datetime,
        maxLines: 1,
        initialValue: description,
        onChanged: onValueChangedDescription,
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Description'),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            onSavedTodo();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
