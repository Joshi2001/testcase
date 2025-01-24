import 'package:testcase/data/network/baseApiServies.dart';
import 'package:testcase/data/network/networkApiServies.dart';
import 'package:testcase/model/chatlist_model.dart';
import 'package:testcase/res/appUrl.dart';

class ChatlistRespositry {
  BaseApiServier servier = Networkapiservies();

  Future<List<ChatModel>> fetchChatApi() async {
    try {
      dynamic response = await servier.getApiResponse(AppUrl.chatUrl);
     List<ChatModel> chatList = (response as List)
          .map((chatData) => ChatModel.fromJson(chatData))
          .toList();
      return chatList;
    } catch (e) {
      rethrow;
    }
  }
}
