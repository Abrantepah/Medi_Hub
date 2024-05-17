import 'package:flutter/material.dart';
import 'package:med_hub/screens/myTodo.dart';

class Mainscreenwidget extends StatelessWidget {
  const Mainscreenwidget(
      {super.key,
      required this.backColor,
      required this.pageIcon,
      required this.string_1,
      required this.string_2});
  final Color backColor;
  final Icon pageIcon;
  final String string_1, string_2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MyTodo()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: backColor,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 208, 206, 206),
                  blurRadius: 6.0,
                  offset: Offset(2, 2))
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: pageIcon,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(string_1),
            const SizedBox(height: 5),
            Text(
              string_2,
              style: const TextStyle(
                color: Color.fromARGB(255, 95, 93, 93),
              ),
            )
          ],
        ),
      ),
    );
  }
}
