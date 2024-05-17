import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.info,
    required this.myIcon,
    required this.mywidget,
  });
  final String info;
  final Icon myIcon;
  final Widget mywidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => mywidget,
              ));
        },
        leading: myIcon,
        title: Text(
          info,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
