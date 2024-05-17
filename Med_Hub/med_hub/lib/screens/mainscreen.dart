import 'package:flutter/material.dart';
import 'package:med_hub/screens/appointmentscreen.dart';
import 'package:med_hub/screens/splashscreen.dart';
import 'package:med_hub/widgets/drawerHeader.dart';
import 'package:med_hub/widgets/imagepicker.dart';
import 'package:med_hub/widgets/mainscreenwidget.dart';
import 'package:med_hub/widgets/menu_item.dart';
import 'package:med_hub/widgets/populardoctors.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List symptoms = ["Temperature", "Snuffle", "Fever", "Cough", "Cold"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Drawerheader(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(
                  height: 1,
                  color: Color.fromARGB(255, 119, 108, 108),
                ),
              ),
              MenuItem(
                  myIcon: Icon(Icons.home_outlined),
                  info: 'Home',
                  mywidget: Splashscreen()),
              MenuItem(
                  myIcon: Icon(Icons.search_sharp),
                  info: 'Search',
                  mywidget: Splashscreen()),
              MenuItem(
                  myIcon: Icon(Icons.favorite_border_rounded),
                  info: 'Favorite',
                  mywidget: Splashscreen()),
              MenuItem(
                myIcon: Icon(Icons.notifications_none_sharp),
                info: 'Notification',
                mywidget: Splashscreen(),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.waving_hand_outlined,
                        color: Color.fromARGB(255, 246, 139, 8),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ImagePickerScreen()));
                        },
                        icon: const Icon(Icons.person_add_alt_1_sharp)),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Mainscreenwidget(
                      backColor: Color.fromARGB(255, 80, 166, 237),
                      pageIcon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      string_1: "Clinic Visit",
                      string_2: "Make an appointment"),
                  Mainscreenwidget(
                      backColor: Colors.white,
                      pageIcon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      string_1: "Home Visit",
                      string_2: "Call the Doctor home"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "What are your symptoms? ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 80,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: symptoms.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 208, 208, 208),
                                  blurRadius: 1,
                                  spreadRadius: 1)
                            ]),
                        child: Center(
                            child: Text(
                          symptoms[index],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Popular Doctors",
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          58,
                          57,
                          57,
                        ),
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
              ),
              const Row(
                children: [
                  Populardoctors(
                      docName: "Dr. Rapheal Agyini",
                      docImage: 'lib/images/Image1.jpg',
                      pages: AppointmentScreen(
                          docImage: 'lib/images/Image1.jpg',
                          docName: "Dr. Raphael Agyini",
                          docSpecialty: "Therapist",
                          telNumber: 'tell://0203924176',
                          rating: "4.2",
                          location: "New York, Medical Centre",
                          prices: "Ghc 50.00",
                          review: "(45)"),
                      docSpecialty: "Therapist",
                      rating: "4.2"),
                  Populardoctors(
                      docName: "Dr. Michael Asante",
                      docImage: 'lib/images/Image2.jpg',
                      pages: AppointmentScreen(
                        docImage: 'lib/images/Image2.jpg',
                        docName: 'Dr. Michael Asante',
                        docSpecialty: 'Dentist',
                        location: 'New York, Medical Center',
                        prices: 'GHc 40.00',
                        rating: '4.3',
                        review: '(26)',
                        telNumber: 'tell://0203924176',
                      ),
                      docSpecialty: "Dentist",
                      rating: "4.3"),
                ],
              ),
              const Row(
                children: [
                  Populardoctors(
                      docName: "Dr. Baiden Baydey",
                      docImage: 'lib/images/Image3.jpg',
                      pages: AppointmentScreen(
                        docImage: 'lib/images/Image3.jpg',
                        docName: 'Dr. Baiden Baydey',
                        docSpecialty: 'Therapist',
                        location: 'New York, Medical Centre',
                        prices: 'GHc 4.00',
                        rating: '4.1',
                        review: '(57)',
                        telNumber: 'tell://0203924176',
                      ),
                      docSpecialty: "Therapist",
                      rating: "4.1"),
                  Populardoctors(
                      docName: "Dr. Linda Gyai",
                      docImage: "lib/images/Image4.jpg",
                      pages: AppointmentScreen(
                        docImage: 'lib/images/Image4.jpg',
                        docName: 'Dr. Linda Gyai',
                        docSpecialty: 'Optometrics',
                        location: 'New York, Medical Centre',
                        prices: 'GHc 50.00',
                        rating: '4.1',
                        review: '(62)',
                        telNumber: 'tell://0203924176',
                      ),
                      docSpecialty: "Optometrics ",
                      rating: "4.1")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
