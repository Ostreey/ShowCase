
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatsListProperties {
  String name;
  String lastMessage;
  var timeStamp;
  String imgUrl;
  String jobTitle;
  String chatId;
  String id;

  ChatsListProperties(
      {required this.name,
        required this.lastMessage,
        required this.timeStamp,
        required this.imgUrl,
        required this.jobTitle,
        required this.chatId,
        required this.id});
}

class ChatsListData {
  final List<ChatsListProperties> chatListProperties;

  ChatsListData({required this.chatListProperties});

  factory ChatsListData.fromJson(List<Map<String, dynamic>> json) {
    List<ChatsListProperties> chatListPropertiesList = [];
    print(json);
    for (var chatData in json) {
      var clientInfo = chatData["clientInfo"];
      var timestamp = chatData["messageTimeStamp"];
      var dateTime = (timestamp as Timestamp).toDate().toLocal();
      String minute;
      if (dateTime.minute < 10) {
        minute = "0" + dateTime.minute.toString();
      } else {
        minute = dateTime.minute.toString();
      }
      String time = dateTime.hour.toString() + ":" + minute;

      chatListPropertiesList.add(ChatsListProperties(
          name: clientInfo["name"],
          lastMessage: chatData["latestMessage"],
          timeStamp: time,
          imgUrl: clientInfo["profileImage"],
          jobTitle: "this is job title",
          chatId: chatData['groupId'],
          id: chatData["clientId"]));
    }

    return ChatsListData(chatListProperties: chatListPropertiesList);
  }
}