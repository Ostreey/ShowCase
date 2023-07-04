import 'package:flutter/material.dart';


import '../../../../constants.dart';
import '../../../../domain/models/chat_list/chat_list_model.dart';
import '../../../common_widgets/profile_pic.dart';
import '../../chat_conversation/chat_conversation.dart.dart';

Widget ChatDivider(String date){
  Color dividerColor = myColors().figmaOrange.shade50;
  return   Row(
    children: [
      Expanded(
        child: Divider(
          color: dividerColor,
          height: 10,
          thickness: 1,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          date,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(
        child: Divider(
          color: dividerColor,
          height: 10,
          thickness: 1,
        ),
      ),
    ],
  );
}

class ChatListElement extends StatelessWidget {
  final ChatsListProperties chatListProperties;

  ChatListElement({required this.chatListProperties});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                settings: RouteSettings(name: '/chat_window'),
                builder: (context) => ChatConversationWindow(conversationPartnerProperties: chatListProperties, )
            ));
      },
      child: Container(
        //height: size.height/10,
        width: size.width,
        margin: EdgeInsets.fromLTRB(size.width / 20, 0, size.width / 20, 0),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myColors().figmaBlue.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ProfilePic(URL: chatListProperties.imgUrl, size: 40),
                      SizedBox(width: 5),
                      Text(chatListProperties.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(chatListProperties.timeStamp,
                                  style: TextStyle(
                                    color: myColors().figmaOrange.shade50,
                                    fontSize: 14,
                                  )),
                            ],
                          )
                      )
                    ],
                  ),
                  Divider(
                    color: myColors().figmaBlue.shade200, //color of divider
                    height: 10, //height spacing of divider
                    thickness:
                    1, //thickness of divier line//spacing at the end of divider
                  ),
                  SizedBox(height: 7),
                  Text(chatListProperties.lastMessage, style: Styles().textStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
