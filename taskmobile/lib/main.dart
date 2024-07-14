import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Flutter TextFeild Example  ",
                style: TextStyle(color: Color.fromARGB(235, 255, 255, 255)),
              ),
              backgroundColor: const Color.fromARGB(230, 30, 124, 197),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "User Name ", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Password ", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FilledButton(
                      onPressed: onPressed,
                      child: const Text(
                        "Sign in ",
                        style: TextStyle(
                            //backgroundColor: Color.fromARGB(218, 29, 158, 145),
                            color: Color.fromARGB(255, 249, 247, 247)),
                      ))
                ],
              ),
            )));
  }

  void onPressed() {
    print("hello ya sadek ");
  }
}
