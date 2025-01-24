// ChatViewModel.dart
import 'package:flutter/foundation.dart';
import 'package:testcase/data/response/api_response.dart';
import 'package:testcase/model/chatlist_model.dart';
import 'package:testcase/respository/chatlist_respositry.dart';

class ChatViewModel with ChangeNotifier {
  final ChatlistRespositry _myChatRepo = ChatlistRespositry();

  ApiResponse<List<ChatModel>> chatList = ApiResponse.loading();

  setChatList(ApiResponse<List<ChatModel>> response) {
    chatList = response;
    notifyListeners();
  }

  Future<void> chatListApi() async {
    setChatList(ApiResponse.loading());

    try {
      List<ChatModel> chatListData = await _myChatRepo.fetchChatApi();
      setChatList(ApiResponse.completed(chatListData));
    } catch (error) {
      setChatList(ApiResponse.error(error.toString()));
      if (kDebugMode) {
        print(error);
      }
    }
  }
}
