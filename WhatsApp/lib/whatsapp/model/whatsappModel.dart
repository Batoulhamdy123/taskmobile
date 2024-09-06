//import 'dart:convert';

import 'package:flutter/cupertino.dart';

class ChatModel {
  String? image;
  String? name;
  IconData? icon;
  String? message;
  String? chatedAt;

  ChatModel(this.chatedAt, this.icon, this.image, this.message, this.name);
  ChatModel.fromjson(Map json) {
    name = json["name"];
    image = json["image"];
    icon = json["icon"];
    message = json["message"];
    chatedAt = json["chatedAt"];
  }
}
