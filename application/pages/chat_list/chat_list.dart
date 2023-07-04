
import 'package:flutter/material.dart';



import 'package:firebase_auth/firebase_auth.dart';
import 'package:super_carga_mobileapp/application/pages/chat_list/widgets/chat_list_element.dart';
import 'package:super_carga_mobileapp/constants.dart';
import '../../../data/Common/database_service.dart';
import '../../../domain/models/chat_list/chat_list_model.dart';
import '../../common_widgets/profile_pic.dart';
import '../chat_conversation/chat_conversation.dart.dart';






class FutureBuilderChatList extends StatefulWidget {


  @override
  State<FutureBuilderChatList> createState() => _FutureBuilderChatListState();
}

class _FutureBuilderChatListState extends State<FutureBuilderChatList> {
  late int _lastTab = 1;
  late ScrollController _scrollController;
  int _numberOfElements = 10;
  int _page = 1;
  bool _isFristLoad = true;
  List<ChatsListProperties> chatListProperties = [];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_loadMore);
  }



  void _loadMore() {

    if(_scrollController.position.atEdge){
      if( _scrollController.position.extentAfter == 0){
        setState(() {
          _isFristLoad = false;
          _page += 1;
        });
      }
    }
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

              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatListElement(chatListProperties:  chatListProperties[index]),
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
      chatListProperties.clear();
    });
    await Future.delayed(Duration(milliseconds: 100)); // Wait for the UI to build
  }

  @override
  Widget build(BuildContext context) {



    int length = chatListProperties.length;

    return FutureBuilder(
      future: DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid).gettingChatsList(),
      builder: (context, snapshot)  {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          chatListProperties.addAll(snapshot.data!.chatListProperties);
          print("DONE");
          length = chatListProperties.length;
            return  _buildList(length);
        } else if (snapshot.hasError) {
          print("NOT DONE");
          return Text(
            '${snapshot.error}',
            style: TextStyle(color: Colors.orange),
          );
        }
        // By default, show a loading spinner.
        return _isFristLoad
            ?Center(
          child: const SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(),
          ),
        )
            :_buildList(length) ;
      },
    );

  }

}