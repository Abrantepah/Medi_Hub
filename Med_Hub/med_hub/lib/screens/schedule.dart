import 'package:flutter/material.dart';
import 'package:med_hub/screens/upcomingschedule.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  int _buttonIndex = 0;

  final _scheduleWidget = [
    // Upcomingschedule()
    const Upcomingschedule(),
    // completed container
    Container(),
    // cancelled container
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Schedule",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 234, 233, 233),
                  borderRadius: BorderRadius.circular(20.0)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _buttonIndex == 0
                            ? const Color.fromARGB(255, 143, 197, 241)
                            : Colors.transparent),
                    child: const Text(
                      "Upcoming",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _buttonIndex == 1
                            ? const Color.fromARGB(255, 131, 195, 248)
                            : Colors.transparent),
                    child: const Text(
                      "Completed",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _buttonIndex = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _buttonIndex == 2
                            ? const Color.fromARGB(255, 144, 202, 250)
                            : Colors.transparent),
                    child: const Text(
                      "Cancelled",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20),
            _scheduleWidget[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
