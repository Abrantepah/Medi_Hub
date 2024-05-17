// ignore_for_file: file_names, avoid_print, unused_local_variable
import 'package:flutter/material.dart';
import 'package:med_hub/screens/doctor%20Screens/loginpage.dart';
import '../../widgets/auth.dart';
import '../../widgets/authstreambuilder.dart';

class Registeringpage extends StatefulWidget {
  const Registeringpage({super.key});

  @override
  State<Registeringpage> createState() => _RegisteringpageState();
}

class _RegisteringpageState extends State<Registeringpage> {
  final bool _isLogin = false;
  bool _loading = false;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  bool passwordObscure = true;

  handleSubmit() async {
    if (!formKey.currentState!.validate()) return;
    final email = emailController.value.text;
    final password = passController.value.text;
    final username = nameController.value.text;
    final phoneNumber = phoneNumberController.value.text;

    setState(() {
      _loading = true;
    });
    if (_isLogin) {
      await Auth().signInWithEmailAndPassword(email, password);
    } else {
      await Auth().registerWithEmailAndPassword(email, password);
    }

    setState(() {
      _loading = false;
    });

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const AuthStreamBuider()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text("WELCOME!",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Elephnti')),
                const SizedBox(
                  height: 10,
                ),
                const Text("Create a New Account ",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        key: const ValueKey('username'),
                        controller: nameController,
                        decoration: const InputDecoration(
                            labelText: "Enter your name ",
                            hintText: "Eg. Gah Lincoln",
                            hintStyle: TextStyle(fontSize: 20),
                            labelStyle: TextStyle(color: Colors.blue),
                            suffixIcon: Icon(Icons.person_outline),
                            border: UnderlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return "Please Enter correct name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: const ValueKey('password'),
                        obscureText: passwordObscure,
                        controller: passController,
                        decoration: InputDecoration(
                            labelText: "Enter your Password ",
                            hintText: "Eg. **********",
                            hintStyle: const TextStyle(fontSize: 20),
                            labelStyle: const TextStyle(color: Colors.blue),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordObscure = !passwordObscure;
                                  });
                                },
                                icon: Icon(passwordObscure
                                    ? Icons.lock_outline
                                    : Icons.lock_open)),
                            border: const UnderlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w @ # $ a-z A-Z]+$')
                                  .hasMatch(value) ||
                              value.length < 8) {
                            return "Please Enter at least 8 characters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        key: const ValueKey('email'),
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: "Enter your Email ",
                            hintText: "Eg. myEmailName@gmail.com",
                            hintStyle: TextStyle(fontSize: 20),
                            labelStyle: TextStyle(color: Colors.blue),
                            suffixIcon: Icon(Icons.mail_outline),
                            border: UnderlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                  .hasMatch(value)) {
                            return "Please Enter correct email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                     
                     

















                     
                      const SizedBox(height: 30.0),
                      Row(
                        children: [
                          const Text("Sign up",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Expanded(child: Container()),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 203, 231, 242),
                            radius: 35,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 4, 93, 165),
                              radius: 25,
                              child: Center(
                                child: IconButton(
                                    onPressed: () => handleSubmit(),
                                    icon: _loading
                                        ? const CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 2,
                                          )
                                        : const Icon(
                                            Icons.double_arrow_rounded,
                                            color: Colors.white,
                                          )),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Loginpage())),
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 119, 116, 116)),
                            ),
                          ),
                          Expanded(child: Container()),
                          const Text(
                            "Forgot Password",
                            style: TextStyle(
                                color: Color.fromARGB(255, 104, 99, 99)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
