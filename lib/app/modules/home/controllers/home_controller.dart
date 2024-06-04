import 'dart:developer';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final Gemini gemini = Gemini.instance;
  List<ChatMessage> messages = [];

  ChatUser currentUser = ChatUser(id: '0', firstName: 'user');
  ChatUser geminiUser = ChatUser(
      id: '1',
      firstName: 'Gemini',
      profileImage:
          'https://www.apkmirror.com/wp-content/themes/APKMirror/ap_resize/ap_resize.php?src=https%3A%2F%2Fdownloadr2.apkmirror.com%2Fwp-content%2Fuploads%2F2024%2F02%2F04%2F65c4d06d63ebc_com.google.android.apps.bard.png&w=192&h=192&q=100');
  bool isMessageGenerating = false;
  sendMessage(ChatMessage chatMessage) {
    isMessageGenerating = true;
    messages = [chatMessage, ...messages];
    update();
    log('Message sent: ${chatMessage.text}');
    try {
      String question = chatMessage.text;
      gemini.streamGenerateContent(question).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;
        if (lastMessage != null && lastMessage.user == geminiUser) {
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold(
                  "",
                  (previousValue, currentValue) =>
                      "$previousValue${currentValue.text}") ??
              "";
          lastMessage.text += response;
          messages = [lastMessage, ...messages];
          isMessageGenerating = false;
          update();
        } else {
          String response = event.content?.parts?.fold(
                  "",
                  (previousValue, currentValue) =>
                      "$previousValue${currentValue.text}") ??
              "";
          ChatMessage message = ChatMessage(
            text: response,
            user: geminiUser,
            createdAt: DateTime.now(),
          );
          messages = [message, ...messages];
          isMessageGenerating = false;
          update();
          log('Message sent: ${chatMessage.text}');
        }
      });
    } catch (e) {
      isMessageGenerating = false;
      update();
      log('Error sending message: $e');
    }
  }

 
}
