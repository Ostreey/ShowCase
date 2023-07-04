

import 'package:flutter/material.dart';


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:super_carga_mobileapp/constants.dart';

import '../../../data/Common/database_service.dart';
import '../../../domain/models/chat_conversation/chat_conversation_model.dart';
import '../../../domain/models/chat_list/chat_list_model.dart';
import '../../common_widgets/profile_pic.dart';
import '../../../utilis.dart';




class ChatConversationWindow extends StatefulWidget {
  final ChatsListProperties conversationPartnerProperties;

  const ChatConversationWindow({required this.conversationPartnerProperties});

  @override
  State<ChatConversationWindow> createState() => _ChatConversationWindowState();
}

class _ChatConversationWindowState extends State<ChatConversationWindow> {
  TextEditingController messageController = TextEditingController();
  String? myFirebaseId;

  @override
  void initState() {
    super.initState();
    initializeData();
  }

  void initializeData() async {
    var prefs = await getSharedPrefs([preffsConstants.myFirebaseId]);
    setState(() {
      myFirebaseId = prefs[preffsConstants.myFirebaseId];
    });
  }



  sendMessage() async{
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": messageController.text,
        "to": widget.conversationPartnerProperties.id,
        "createdAt": DateTime.now(),
        "from": myFirebaseId,
      };

      DatabaseService().sendMessage(widget.conversationPartnerProperties.chatId, chatMessageMap);
      setState(() {
        messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors().figmaBlue.shade50,
        body: Column(
          children: [
       Expanded(
         child: StreamBuilderChatConversationMessagesList(conversationPartnerProperties: widget.conversationPartnerProperties) ,
       ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 5, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: myColors().figmaOrange.shade50,
                          width: 1.0,
                        ),
                      ),
                      child: TextField(
                        controller: messageController,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        maxLines: null, // Allow unlimited lines of text
                       //dwadwadwa keyboardType: TextInputType.multiline, // Enable multiline input
                       // textInputAction: TextInputAction.newline,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type your message',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: myColors().figmaOrange.shade50,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        sendMessage();
                      },
                    ),
                  ),
                ],
              ),
            ),




        ],
        ),


      ),
    );
  }
}


class ChatConversationMessage extends StatelessWidget {
  final ChatMessageProperties chatMessageProperties;
  final conversationPartnerName;
  final conversationPartnerImg;
  final myFirebaseId;
  final userName;
  final profilePicURL;

  const ChatConversationMessage({super.key, required this.chatMessageProperties, required this.conversationPartnerName, required this.conversationPartnerImg, required this.myFirebaseId,required this.userName,required this.profilePicURL});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMessageFromMe = true;
    if(myFirebaseId == chatMessageProperties.from){
      isMessageFromMe = false;
    }
    return Container(
        width: size.width,
         margin:  isMessageFromMe ?EdgeInsets.fromLTRB(size.width / 20, 0, size.width / 5, 0) : EdgeInsets.fromLTRB(size.width / 5, 0, size.width / 20, 0),
         padding: EdgeInsets.all(15),
         decoration: BoxDecoration(
           color: myColors().figmaBlue.shade100,
           borderRadius: BorderRadius.circular(20.0),
         ),
         child: Row(
           children: [
             isMessageFromMe ?ProfilePic(URL: conversationPartnerImg, size: 40): ProfilePic(URL: profilePicURL, size: 40),
           SizedBox(width: 10,),
           Expanded(
             child:   Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     isMessageFromMe ?Text(conversationPartnerName, style: Styles().chatNameStyle): Text(userName, style: Styles().chatNameStyle),
                     Expanded(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Text(chatMessageProperties.timeStamp,
                                 style: TextStyle(
                                   color: myColors().figmaOrange.shade50,
                                   fontSize: 14,
                                 )),
                           ],
                         )
                     ),
                   ],
                 ),
                 SizedBox(height: 15,),
                 Text(chatMessageProperties.message, style: Styles().textStyle,)
               ],
             ),
           )
           ],
         )
     );
    }
}



class StreamBuilderChatConversationMessagesList extends StatefulWidget {
  final ChatsListProperties conversationPartnerProperties;

  StreamBuilderChatConversationMessagesList({ required this.conversationPartnerProperties});

  @override
  State<StreamBuilderChatConversationMessagesList> createState() => _FutureBuilderChatConversationMessagestState();
}

class _FutureBuilderChatConversationMessagestState extends State<StreamBuilderChatConversationMessagesList> {

  Stream<DocumentSnapshot<Map<String, dynamic>>>? chats;
  late ScrollController _scrollController;
  int _page = 1;
  bool _isFristLoad = true;
  String? username;
  String? myFirebaseId;
  String? userProfilepicURL;
  List<ChatMessageProperties> conversationMessageProperties = [];



  @override
  void initState() {
    getChatandAdmin();
    super.initState();
    _scrollController = ScrollController()..addListener(_loadMore);
  }



  void _loadMore() {

  /*  if(_scrollController.position.atEdge){
      if( _scrollController.position.extentAfter == 0){
        setState(() {
          _isFristLoad = false;
          _page += 1;
        });
      }
    }*/
  }



  Widget _buildList(int length) {
    return RefreshIndicator(
      onRefresh: _refreshList,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: length,
              reverse: true, // Set reverse to true
              itemBuilder: (context, index) {
                int reversedIndex = length - 1 - index; // Calculate the reversed index
                return Column(
                  children: [
                    ChatConversationMessage(
                      chatMessageProperties: conversationMessageProperties[reversedIndex],
                      conversationPartnerName: widget.conversationPartnerProperties.name,
                      conversationPartnerImg: widget.conversationPartnerProperties.imgUrl,
                      myFirebaseId: myFirebaseId,
                      userName: username,
                      profilePicURL: userProfilepicURL,
                    ),
                    SizedBox(height: 15),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  Future<void> _refreshList() async {
    // Your code to refresh the list goes here
    setState(() {
      _isFristLoad = true;
      _page = 1;
      conversationMessageProperties.clear();
    });
    await Future.delayed(Duration(milliseconds: 100)); // Wait for the UI to build
  }


  getChatandAdmin() {
    DatabaseService().getChats(widget.conversationPartnerProperties.chatId).then((val) async {
      var prefs = await getSharedPrefs([preffsConstants.userName, preffsConstants.myFirebaseId, preffsConstants.profilePicURL]);
      setState(() {
        chats = val;
        username = prefs[preffsConstants.userName];
        myFirebaseId = prefs[preffsConstants.myFirebaseId];
        userProfilepicURL = prefs[preffsConstants.profilePicURL];
      });
    });
  }



  @override
  Widget build(BuildContext context) {

    int lenght = conversationMessageProperties.length;
    return StreamBuilder(
      stream:chats,
      builder: (context, AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot)  {
        if (snapshot.hasData) {
            var messagesField = snapshot.data!.data()!['messages'] ;
            print(messagesField);
            var tmp = List<Map<String, dynamic>>.from(messagesField);
            conversationMessageProperties.clear();

            //TODO: export this converting to jsonDecoder
            for (var chatWindowData in tmp) {
              var timeStamp = chatWindowData["createdAt"];

              DateTime time = DateTime.parse(timeStamp);
              String minute;
              if (time.minute < 10) {
                minute = "0" + time.minute.toString();
              } else {
                minute = time.minute.toString();
              }
              String parsedTime = time.hour.toString() + ":" + minute;

              conversationMessageProperties.add(ChatMessageProperties(
                  timeStamp: parsedTime,
                  from: chatWindowData['from'],
                  message: chatWindowData['message'],
                  to: chatWindowData['to']));
            }

            lenght = conversationMessageProperties.length;

            return _buildList(lenght);
        } else if (snapshot.hasError) {
          return Text(
            '${snapshot.error}',
            style: TextStyle(color: Colors.orange),
          );
        }
        // By default, show a loading spinner.
        return Center(
          child: const SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );

  }

}
