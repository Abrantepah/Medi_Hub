import 'package:flutter/material.dart';
import 'package:med_hub/screens/doctor%20Screens/loginpage.dart';
import 'package:med_hub/screens/doctor%20Screens/registeringPage.dart';

class Modalbottom extends StatelessWidget {
  const Modalbottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Registeringpage()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.blue,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.login_rounded,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Loginpage()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.blue,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.login_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.cancel,
              color: Colors.blue,
            )),
      ],
    );
  }
}
