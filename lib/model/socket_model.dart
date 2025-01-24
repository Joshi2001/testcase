class Message {
  final String text;
  final DateTime timestamp;

  Message({required this.text, required this.timestamp});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      text: json['text'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  static void add(List<Message> messages, Message message) {
    messages.add(message);
  }
}
