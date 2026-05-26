import 'package:flutter/material.dart';
import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';

class ChatViewModel extends ChangeNotifier {
  // Add any specific business logic for chat here
  // For now, we can manage navigation or custom events
  
  void onConversationTap(BuildContext context, Conversation conversation) {
    // Since we use go_router, we might want to navigate using it
    // But for simplicity in this snippet, we'll assume the screen handles it
  }
}
