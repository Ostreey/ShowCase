import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:super_carga_mobileapp/utilis.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:super_carga_mobileapp/constants.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

import '../../domain/models/chat_list/chat_list_model.dart';

class DatabaseService {
  final String? uid;

  DatabaseService({this.uid});


  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection("users");

  final CollectionReference chatsListCollection =
  FirebaseFirestore.instance.collection("user-chats");

  final CollectionReference chatsWindowCollection =
  FirebaseFirestore.instance.collection("messages");


  // saving the userdata
  Future savingUserData(String fullName, String email) async {
    return await userCollection.doc(uid).set({
      "email": email,
      "uid": uid,
    });
  }

  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot =
    await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }


  Future<ChatsListData> gettingChatsList() async {
    try {
      final value = await getSharedPrefs([preffsConstants.myFirebaseId]);
      String firebaseId = value[preffsConstants.myFirebaseId];
      final response = await chatsListCollection.where(
          "driverId", isEqualTo: firebaseId).get();
      print(response.docs[0].data());
      List<Map<String, dynamic>> data = response.docs.map((doc) =>
      doc.data() as Map<String, dynamic>).toList();
      return ChatsListData.fromJson(data);
    } catch (error) {
      throw Exception(error);
    }
  }

  Future redirectToChat(String chatPartnerId) async {
    try {
      final value = await getSharedPrefs([preffsConstants.myFirebaseId]);
      String firebaseId = value[preffsConstants.myFirebaseId];
      QuerySnapshot snapshot =  await chatsListCollection.where("groupId", isEqualTo: "XXXXXXXXXXXXXXXX" ).get();
      print(snapshot.docs.isNotEmpty);
      //List<Map<String, dynamic>> data = response.docs.map((doc) =>
      //doc.data() as Map<String, dynamic>).toList();
    } catch (error) {
      throw Exception(error);
    }
  }

  getChats(String chatId) async {
      return FirebaseFirestore.instance
          .collection('messages')
          .doc(chatId)
          .snapshots();

  }

  String formatDateTime(DateTime dateTime) {
    final DateFormat formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
    final String formattedDate = formatter.format(dateTime);
    return formattedDate;
  }

  sendMessage(String chatId, Map<String, dynamic> chatMessageData) async {

    //TODO: need to send also to user-chats to have "last message"
    chatsWindowCollection.doc(chatId).update({
      "messages": FieldValue.arrayUnion([
        {
          "message": chatMessageData['message'],
          "to": chatMessageData['to'],
          "from": chatMessageData['from'],
          "createdAt": formatDateTime(DateTime.now()),
        }
      ]),
    });
  }
}
