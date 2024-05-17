import 'package:flutter/material.dart';

class Upcomingschedule extends StatelessWidget {
  const Upcomingschedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("About Doctor",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 219, 219, 219),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 172, 213, 246),
                      child: Center(
                          child: Icon(
                        Icons.person_add_alt_rounded,
                      )),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(thickness: 1, height: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Color.fromARGB(255, 176, 175, 175)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("12/01/2023")
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Color.fromARGB(255, 177, 177, 177),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10:30 Am",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 5),
                          const Text("Confirmed")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 227, 226, 226),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            )),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 158, 207, 247),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Reschedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text("About Doctor",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 219, 219, 219),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 172, 213, 246),
                      child: Center(
                          child: Icon(
                        Icons.person_add_alt_rounded,
                      )),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(thickness: 1, height: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Color.fromARGB(255, 176, 175, 175)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("12/01/2023")
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Color.fromARGB(255, 177, 177, 177),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10:30 Am",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 5),
                          const Text("Confirmed")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 227, 226, 226),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            )),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 158, 207, 247),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Reschedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text("About Doctor",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 219, 219, 219),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 172, 213, 246),
                      child: Center(
                          child: Icon(
                        Icons.person_add_alt_rounded,
                      )),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(thickness: 1, height: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Color.fromARGB(255, 176, 175, 175)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("12/01/2023")
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Color.fromARGB(255, 177, 177, 177),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10:30 Am",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 5),
                          const Text("Confirmed")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 227, 226, 226),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            )),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 158, 207, 247),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Reschedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text("About Doctor",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 219, 219, 219),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 172, 213, 246),
                      child: Center(
                          child: Icon(
                        Icons.person_add_alt_rounded,
                      )),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(thickness: 1, height: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.calendar_month,
                              color: Color.fromARGB(255, 176, 175, 175)),
                          SizedBox(
                            width: 5,
                          ),
                          Text("12/01/2023")
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_filled_sharp,
                            color: Color.fromARGB(255, 177, 177, 177),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "10:30 Am",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 5),
                          const Text("Confirmed")
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 227, 226, 226),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            )),
                          )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 158, 207, 247),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Reschedule",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            )),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
