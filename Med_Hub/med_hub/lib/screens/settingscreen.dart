import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:med_hub/screens/splashscreen.dart';
import 'package:med_hub/widgets/settinglisttile.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.person_add_alt_rounded,
                            color: Colors.white))),
                title: const Text(
                  'User_Name',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 160, 159, 159)),
                ),
              ),
              const Divider(
                height: 1,
                color: Color.fromARGB(255, 190, 189, 189),
              ),
              const SizedBox(height: 20),
              const Settinglisttile(
                  title: "Profile",
                  myIcon: Icon(Icons.person_add_alt_1_outlined),
                  backcolor: Color.fromARGB(255, 51, 51, 51)),
              const SizedBox(
                height: 20.0,
              ),
              const Settinglisttile(
                  title: "Privacy",
                  myIcon: Icon(Icons.privacy_tip_outlined),
                  backcolor: Color.fromARGB(255, 248, 237, 140)),
              const SizedBox(
                height: 20.0,
              ),
              const Settinglisttile(
                  title: "Notifications",
                  myIcon: Icon(Icons.notifications_on_outlined),
                  backcolor: Color.fromARGB(255, 188, 247, 149)),
              const SizedBox(
                height: 20.0,
              ),
              const Settinglisttile(
                  title: "About Us",
                  myIcon: Icon(Icons.info_outline_rounded),
                  backcolor: Color.fromARGB(255, 146, 160, 244)),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Splashscreen()));
                },
                child: const Settinglisttile(
                    title: "Log out ",
                    myIcon: Icon(Icons.logout_outlined),
                    backcolor: Color.fromARGB(255, 244, 138, 131)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
