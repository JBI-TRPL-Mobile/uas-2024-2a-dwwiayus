class Message {
  final int id;
  final String massage;
  final String time;

  Message({required this.id, required this.massage, required this.time});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      massage: json['massage'],
      time: json['time'],
       );
  }
} 