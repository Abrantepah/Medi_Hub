import 'package:flutter/material.dart';
import 'package:med_hub/screens/chatscreen.dart';

class Onlinedoctors extends StatelessWidget {
  const Onlinedoctors(
      {super.key,
      required this.doctImage,
      required this.docName,
      required this.time,
      required this.col});
  final String doctImage, docName, time;
  final Color col;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10,
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Chatscreeen()));
      },
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(doctImage),
      ),
      title: Text(
        docName,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: const Text(
        "Hello Doctor, are you there? ",
        style: TextStyle(color: Colors.grey),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        time,
        style: TextStyle(color: col),
      ),
    );
  }
}
