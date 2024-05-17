// ignore_for_file: must_be_immutable, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:med_hub/screens/payment_page.dart';
import '../widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({
    super.key,
    required this.docImage,
    required this.docName,
    required this.docSpecialty,
    required this.telNumber,
    required this.rating,
    required this.location,
    required this.prices,
    required this.review,
  });
  final String docImage,
      docName,
      docSpecialty,
      telNumber,
      rating,
      location,
      prices,
      review;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 115, 182, 236),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Navbar()));
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            color: Colors.white, size: 30)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert,
                            color: Colors.white, size: 30))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(docImage),
                      ),
                      Text(
                        docName,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(docSpecialty,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 192, 241, 245),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: () async {
                                  final Uri url =
                                      Uri(scheme: 'tel', path: telNumber);
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    print("Cannot launch this url");
                                  }
                                },
                                icon: const Icon(Icons.call)),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 192, 241, 245),
                                shape: BoxShape.circle),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    CupertinoIcons.chat_bubble_2_fill)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height / 1.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "About Doctor",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(height: 10),
                const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text(
                      "Review",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.star,
                        color: Color.fromARGB(255, 246, 183, 12)),
                    Text(rating,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(review),
                    Expanded(child: Container()),
                    const Text("See all", style: TextStyle(color: Colors.blue))
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 189, 185, 185),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("lib/images/Image1.jpg"),
                                  ),
                                  title: Text(
                                    "Dr. Doctor Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("2 days ago"),
                                  trailing: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.star,
                                          color: Color.fromARGB(
                                              255, 245, 165, 28)),
                                      Text(
                                        "4.5",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 189, 185, 185),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("lib/images/Image1.jpg"),
                                  ),
                                  title: Text(
                                    "Dr. Doctor Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("2 days ago"),
                                  trailing: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.star,
                                          color: Color.fromARGB(
                                              255, 245, 165, 28)),
                                      Text(
                                        "4.5",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 189, 185, 185),
                                    blurRadius: 2,
                                    spreadRadius: 2)
                              ]),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: const Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:
                                        AssetImage("lib/images/Image1.jpg"),
                                  ),
                                  title: Text(
                                    "Dr. Doctor Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text("2 days ago"),
                                  trailing: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.star,
                                          color: Color.fromARGB(
                                              255, 245, 165, 28)),
                                      Text(
                                        "4.5",
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(location,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20)),
                const SizedBox(height: 10),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 194, 238, 246),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.location_on,
                        size: 30, color: Colors.blue),
                  ),
                  title: Text(location,
                      style: const TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: const Text("address line of the medical centre"),
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          height: 110,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 200, 199, 199),
                blurRadius: 2,
                spreadRadius: 1)
          ]),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Consultation Price."),
                  Text(
                    prices,
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 15),
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentPage()));
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentPage()));
                  },
                  child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: const Center(
                          child: Text(
                        "Book Appointment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ))),
                ),
              )
            ],
          )),
    ));
  }
}
