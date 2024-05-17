import 'package:flutter/material.dart';

class Settinglisttile extends StatelessWidget {
  const Settinglisttile(
      {super.key,
      required this.title,
      required this.myIcon,
      required this.backcolor});
  final String title;
  final Icon myIcon;
  final Color backcolor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 25,
          backgroundColor: backcolor,
          child: IconButton(
            onPressed: () {},
            icon: myIcon,
            color: Colors.white,
          )),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(
        Icons.keyboard_double_arrow_right_rounded,
        color: Colors.black,
      ),
    );
  }
}
