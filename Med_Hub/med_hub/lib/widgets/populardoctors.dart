import 'package:flutter/material.dart';

class Populardoctors extends StatelessWidget {
  const Populardoctors(
      {super.key,
      required this.docName,
      required this.docImage,
      required this.pages,
      required this.docSpecialty,
      required this.rating});
  final String docName;
  final String docImage;
  final Widget pages;
  final String docSpecialty;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => pages));
      },
      child: Container(
        width: 180,
        height: 180,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 2)
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(docImage),
            ),
            Text(
              docName,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(docSpecialty),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 226, 160, 19),
                  size: 20,
                ),
                Text(rating)
              ],
            )
          ],
        ),
      ),
    );
  }
}
