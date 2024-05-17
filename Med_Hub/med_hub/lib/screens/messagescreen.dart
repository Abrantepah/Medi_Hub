// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:med_hub/widgets/onlinedoctors.dart';

class Messagescreen extends StatelessWidget {
  List img = [
    "Image1.jpg",
    "Image2.jpg",
    "Image3.jpg",
    "Image4.jpg",
    "Image2.jpg",
    "Image1.jpg",
  ];

  Messagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            " Messages",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 206, 205, 205),
                      blurRadius: 18,
                      spreadRadius: 2)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(Icons.search_rounded,
                    color: Color.fromARGB(255, 162, 210, 250))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Active Now",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 80,
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 176, 176, 176),
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 65,
                          width: 65,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'lib/images/${img[index]}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(2),
                        padding: const EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Recent Chat",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        const Column(
          children: [
            Onlinedoctors(
              doctImage: "lib/images/Image1.jpg",
              docName: "Dr. Raphael Agyini",
              time: "Online",
              col: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Onlinedoctors(
              doctImage: "lib/images/Image6.jpg",
              docName: "Dr. Benjamin",
              time: "1:20 PM",
              col: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Onlinedoctors(
                doctImage: "lib/images/Image7.jpg",
                docName: "Dr. Hellen",
                time: "Online",
                col: Colors.green),
            SizedBox(
              height: 20,
            ),
            Onlinedoctors(
              doctImage: "lib/images/Image8.jpg",
              docName: "Dr. Mathew Prodo",
              time: "1:20 PM",
              col: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Onlinedoctors(
                doctImage: "lib/images/Image9.jpg",
                docName: "Miss. Erica Jones",
                time: "2:09 PM",
                col: Colors.grey),
            SizedBox(
              height: 20,
            ),
            Onlinedoctors(
              doctImage: "lib/images/Image10.jpg",
              docName: "Dr. Anabel Rostay",
              time: "1:50 PM",
              col: Colors.grey,
            )
          ],
        )
      ],
    ));
  }
}
