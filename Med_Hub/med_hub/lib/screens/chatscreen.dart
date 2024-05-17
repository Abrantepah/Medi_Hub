import 'package:flutter/material.dart';

class Chatscreeen extends StatelessWidget {
  const Chatscreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 147, 202, 247),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
          ),
          leadingWidth: 30,
          title: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("lib/images/Image1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr. Doctor Name ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.video_call, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container();
      }),
    ));
  }
}
