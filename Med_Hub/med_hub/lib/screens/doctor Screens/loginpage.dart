// ignore_for_file: avoid_print, unused_local_variable, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:med_hub/screens/doctor%20Screens/registeringPage.dart';
import 'package:med_hub/widgets/auth.dart';
import 'package:med_hub/widgets/authstreambuilder.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final bool _isLogin = true;
  bool _loading = false;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passwordObscure = true;

  handleSubmit() async {
    if (!formKey.currentState!.validate()) return;
    final email = emailController.value.text;
    final password = passController.value.text;

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

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const AuthStreamBuider()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text("MED-Hub",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Elephnti')),
                const SizedBox(
                  height: 10,
                ),
                const Text("Welcome Back!",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        key: const ValueKey('email'),
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: const InputDecoration(
                            labelText: "Enter your Email ",
                            hintText: "Eg. myEmailName@gmail.com",
                            hintStyle: TextStyle(fontSize: 20),
                            labelStyle: TextStyle(color: Colors.blue),
                            suffixIcon: Icon(Icons.mail_outline),
                            border: UnderlineInputBorder()),
                        validator: (value) {
                          if (value!.isEmpty || !value.contains("@")) {
                            return "Please Enter a valid email address.";
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        key: const ValueKey('password'),
                        obscureText: passwordObscure,
                        controller: passController,
                        keyboardType: TextInputType.visiblePassword,
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
                            return "Password must be at least 8 characters long";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        children: [
                          const Text("Sign in",
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
                                  onPressed: () {
                                    handleSubmit();
                                    // const Streambuilder();
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const Navbar()));
                                  },
                                  icon: _loading
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2,
                                        )
                                      : const Icon(
                                          Icons.double_arrow_rounded,
                                          color: Colors.white,
                                        ),
                                ),
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
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Registeringpage()));
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 119, 116, 116)),
                            ),
                          ),
                          Expanded(child: Container()),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 104, 99, 99)),
                            ),
                          )
                        ],
                      ),
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
