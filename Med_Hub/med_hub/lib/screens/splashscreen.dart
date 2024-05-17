import 'package:flutter/material.dart';
import 'package:med_hub/screens/modalbottom.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: const Color.fromARGB(91, 233, 241, 245),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child:
                  Image(image: AssetImage('lib/images/health-insurance.png')),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    enableDrag: true,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const Modalbottom());
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 107, 107, 107),
                          blurRadius: 6.0,
                          offset: Offset(2.0, 4.0))
                    ]),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text("Welcome!"),
            const Text("Taking care of your health has "),
            const Text("become easier! Learn more"),
            const Text("how to do it.")
          ],
        ),
      ),
    ));
  }
}
