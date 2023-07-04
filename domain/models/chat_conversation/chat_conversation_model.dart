
class ChatMessageProperties {
  var timeStamp;
  String from;
  String message;
  String to;

  ChatMessageProperties(
      {required this.timeStamp,
        required this.from,
        required this.message,
        required this.to});
}

class ChatWindowData {
  final List<ChatMessageProperties> chatWindowProperties;

  ChatWindowData({required this.chatWindowProperties});

  factory ChatWindowData.fromJson(List<Map<String, dynamic>> json) {
    List<ChatMessageProperties> chatWindowPropertiesFactory = [];

    print(json);
    for (var chatWindowData in json) {
      var timeStamp = chatWindowData["createdAt"];

      DateTime time = DateTime.parse(timeStamp);
      String minute;
      if (time.minute < 10) {
        minute = "0" + time.minute.toString();
      } else {
        minute = time.minute.toString();
      }
      String parsedTime = time.hour.toString() + ":" + minute;

      chatWindowPropertiesFactory.add(ChatMessageProperties(
          timeStamp: parsedTime,
          from: chatWindowData['from'],
          message: chatWindowData['message'],
          to: chatWindowData['to']));
    }

    return ChatWindowData(chatWindowProperties: chatWindowPropertiesFactory);
  }
}


