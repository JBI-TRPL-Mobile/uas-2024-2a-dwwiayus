import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/message_model.dart';
import 'package:flutter/foundation.dart';


class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messages => _messages;

  Future<void> loadMessages() async {
    final String response = await rootBundle.loadString('data/datamessage.json');
    final data = json.decode(response) as List;
    _messages = data.map((json) => Message.fromJson(json)).toList();
    notifyListeners();
  }
}
