// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:med_hub/screens/mainscreen.dart';
import 'package:med_hub/widgets/todo_list_widget.dart';

import '../widgets/addTodo.dart';

class MyTodo extends StatefulWidget {
  const MyTodo({super.key});

  @override
  State<MyTodo> createState() => _MyTodoState();
}

class _MyTodoState extends State<MyTodo> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      const TodoListWidget(
        todo: null,
      ),
      Container(),
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Mainpage()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            )),
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text(
          'My schedules',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: 'Todos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_rounded), label: 'Completed')
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) => const AddTodoDialogWidget(),
            );
          },
          icon: const Icon(Icons.add),
          color: Colors.white,
        ),
      ),
    ));
  }
}
