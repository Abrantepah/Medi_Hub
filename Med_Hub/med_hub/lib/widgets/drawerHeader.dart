// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Drawerheader extends StatelessWidget {
  const Drawerheader({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 116, 105, 105),
        child: Icon(Icons.person_outline_outlined),
      ),
      title: Text(
        "Luka Lincoln",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
