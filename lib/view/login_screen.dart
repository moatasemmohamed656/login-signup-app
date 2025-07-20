// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                label: Text("Email Address"),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordcontroller,
              decoration: const InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (value) {
                print(value);
              },
              onChanged: (value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue,
              ),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  print(emailcontroller.text);
                  print(passwordcontroller.text);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Dont have acount ?"),
                TextButton(
                  child: const Text("Regester"),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
