import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmobile/whatsapp/chatsscreen.dart';
//import 'package:taskmobile/whatsapp/chatsscreen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}
