import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:taskmobile/const.dart';
import 'package:taskmobile/whatsapp/model/whatsappdata.dart.dart';
import 'package:taskmobile/whatsapp/model/whatsappModel.dart';
import 'package:taskmobile/whatsapp/widgets/customWidget.dart';
import 'package:taskmobile/whatsapp/widgets/customchat.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
                color: Color.fromARGB(255, 243, 246, 246), fontSize: 25),
          ),
          backgroundColor: Colors.green,
          actions: const [
            Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        // ignore: prefer_const_constructors
        body: Container(
          //height: 300,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const CustomChat(icon: Icons.lock, text: "Locked Chat "),
              const SizedBox(
                height: 15,
              ),
              const CustomChat(
                  icon: Icons.archive, text: "archived ", space: "20"),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: chatList.length,
                  itemBuilder: (context, index) => CustomWidget(
                      name: chatList[index].name ?? "",
                      image: chatList[index].image ?? "",
                      icon: chatList[index].icon,
                      message: chatList[index].message ?? "",
                      chatedAt: chatList[index].chatedAt ?? ""),
                ),
              ),

              /*const CustomWidget(
            icon: Icons.video_call_sharp,
            name: "Batoul",
            image: imag1,
            chatedAt: "4:05 AM ",
            message: "video",
          )*/
              /*
          Row(
            children: [
              Icon(
                Icons.lock,
                color: Colors.green,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                "Locked Chats ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Icon(
                Icons.archive_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                "Archived",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "1",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),*/
            ],
          ),
        ));
  }

  List<ChatModel> chatList =
      whatsappchats.map((e) => ChatModel.fromjson(e)).toList();
}

/*Widget _customchat(
    {required IconData icon, required String text, String? space}) {
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
          space,
          style: const TextStyle(color: Colors.black),
        )
    ],
  );
}*/
