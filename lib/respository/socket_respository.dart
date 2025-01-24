import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:testcase/model/socket_model.dart';

class SocketRespository with ChangeNotifier {

  IO.Socket? socket;
  String baseUrl = '';
  final List<Message> _messages = [];

  SocketRespository(BuildContext context) {
    initsocket(context);
  }

  List<Message> get messages => _messages;

  void initsocket(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      baseUrl = 'http://127.0.0.1:5000';
    } else if (Theme.of(context).platform == TargetPlatform.android) {
      baseUrl = 'http://10.0.2.2:5000';
    } else {
      baseUrl = 'http://127.0.0.1:5000';
    }

    socket = IO.io(baseUrl, <String, dynamic>{
      'transports': ['websocket','polling'],
      'autoConnect': false,
    });
    socket?.on('connect', (_) {
      if (kDebugMode) {
        print("Connect!");
      }
    });
    socket?.on('disconnect', (_) {
      if (kDebugMode) {
        print("Disconnect!");
      }
    });
    socket?.on('error', (error) {
      if (kDebugMode) {
        print("Connection failed, retrying...");
        socket?.connect(); 
      }
    });

    socket?.on('message', (data) {
      messageReceived(data);
    });
     socket?.connect();
    
  }

  void messageReceived(dynamic data) {
    if (data != null) {
      var message = Message.fromJson(data);
      _messages.add(message);
      notifyListeners();
    }
  }

 void sendMessage(String text) async {
  try {
    if (socket != null && socket!.connected) {
      var message = Message(text: text, timestamp: DateTime.now());
      socket?.emit("message", message.toJson());
      if (kDebugMode) {
        print("Message sent: $text");
      }
    } else {
      if (kDebugMode) {
        print("Socket is not connected!");
      }
      if (socket != null) {
        socket?.connect();
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error while sending message: $e');
    }
  }
}


  void disposeSocket() {
    socket?.disconnect();
    super.dispose();
  }
}
