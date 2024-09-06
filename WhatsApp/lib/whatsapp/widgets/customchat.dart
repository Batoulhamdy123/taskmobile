import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChat extends StatelessWidget {
  const CustomChat(
      {super.key, required this.icon, required this.text, this.space});
  final IconData icon;
  final String text;
  final String? space;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.green,
        ),
        const SizedBox(
          width: 40,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        if (space != null) const Spacer(),
        if (space != null)
          Text(
            space!,
            style: const TextStyle(color: Colors.black),
          )
      ],
    );
  }
}
