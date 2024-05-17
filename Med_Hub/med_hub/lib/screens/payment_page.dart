// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

import '../widgets/paymentSuccess.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController amountController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String publicKey = 'pk_test_90a200a5926406be72d9d573663aedd61be76757';
  final plugin = PaystackPlugin();
  String message = '';

  @override
  void initState() {
    super.initState();
    plugin.initialize(publicKey: publicKey);
  }

  Future<void> makePayment() async {
    int price = int.parse(amountController.text) * 100;
    Charge charge = Charge()
      ..amount = price
      ..reference = 'ref_${DateTime.now()}'
      ..email = emailController.text
      ..currency = 'GHs';

    CheckoutResponse response = await plugin.checkout(context,
        method: CheckoutMethod.card, charge: charge);

    if (response.status == true) {
      message = 'Payment was successful. Ref: ${response.reference}';
      if (mounted) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => PaymentSuccess(message: message)),
            ModalRoute.withName('/'));
      } else {
        print(response.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        title: const Text("Payment Page",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                TextFormField(
                  controller: amountController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefix: const Text("GHc"),
                      labelText: "Amount: ",
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^((0?\.((0[1-9])|[1-9]\d))|([1-9]\d*(\.\d{2})?))$')
                            .hasMatch(value) ||
                        value.length < 2) {
                      return "Invalid amount";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: 'examples@gmail.com',
                      labelText: "Email: ",
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !value.contains("@") ||
                        value.length < 2) {
                      return "Please Enter your email";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    makePayment();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Make Payment",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
