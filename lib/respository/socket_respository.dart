// ignore_for_file: library_prefixes

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO show Socket, io;
import 'package:testcase/model/socket_model.dart';

class SocketRepository with ChangeNotifier {
  IO.Socket? socket;
  final String baseUrl = 'http://10.0.2.2:5000'; // Use a single base URL for local development
  final List<Message> _messages = [];

  SocketRepository(BuildContext context) {
    initSocket();
  }

  List<Message> get messages => _messages;

  void initSocket() {
    socket = IO.io(baseUrl, <String, dynamic>{
      'transports': ['websocket'], // Specify the transport method
      'autoConnect': false,
    });

    socket?.on('connect', (_) {
      if (kDebugMode) {
        print("Connected to socket!");
      }
    });

    socket?.on('connect_error', (error) {
      if (kDebugMode) {
        print("Connection error: $error");
      }
    });

    socket?.on('disconnect', (reason) {
      if (kDebugMode) {
        print("Disconnected: $reason");
      }
    });

    socket?.on('error', (error) {
      if (kDebugMode) {
        print("Socket error: $error");
      }
    });

    socket?.on('message', (data) {
      messageReceived(data);
    });

    socket?.connect(); // Connect the socket after setting up listeners
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
          print("Socket is not connected! Attempting to connect...");
        }
        socket?.connect();
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error while sending message: $e');
      }
    }
  }

  @override
  void dispose() {
    disposeSocket();
    super.dispose();
  }

  void disposeSocket() {
    socket?.disconnect();
  }
}