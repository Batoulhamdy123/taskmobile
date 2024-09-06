import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmobile/const.dart';
//import 'package:taskmobile/whatsapp/model/const_mao.dart';
//import 'package:taskmobile/whatsapp/model/modelmap.dart';

// ignore: must_be_immutable
class CustomWidget extends StatelessWidget {
  CustomWidget(
      {super.key,
      required this.name,
      this.icon,
      required this.image,
      this.chatedAt,
      this.message});
  final String image;
  final String? name;
  final IconData? icon;
  final String? message;
  final String? chatedAt;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imag1),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              name!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(children: [
              Icon(
                icon!,
                color: Colors.grey,
                size: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                message!,
                style: const TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 105, 99, 99)),
              ),
            ]),
            SizedBox(
              height: 15,
            )
          ],
        ),
        const Spacer(),
        Text(chatedAt!)
      ],
    );
  }
}
