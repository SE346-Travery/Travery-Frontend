import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/widgets/app_bar_widget.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/chat/chat_service.dart';

class ChatScreen extends StatefulWidget {
  final String? uid;
  final String? guid;
  final String title;
  final bool showBackButton;

  const ChatScreen({
    super.key,
    this.uid,
    this.guid,
    required this.title,
    this.showBackButton = true,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late Future<User?> _loginFuture;

  @override
  void initState() {
    super.initState();
    _loginFuture = _checkAndEnsureLogin();
  }

  Future<User?> _checkAndEnsureLogin() async {
    final storage = context.read<SecurityStorageService>();
    final chatService = context.read<ChatService>();

    User? user = await CometChat.getLoggedInUser();
    if (user != null) return user;

    // If not logged in, try to login using stored UID
    final cometchatUid = await storage.getCometchatUid();

    if (cometchatUid != null) {
      try {
        await chatService.login(cometchatUid);
        return await CometChat.getLoggedInUser();
      } catch (e) {
        debugPrint("ChatScreen: Auto-login failed: $e");
        throw Exception("Lỗi đăng nhập CometChat: $e");
      }
    }
    throw Exception("Chưa có thông tin cometchat_uid. Vui lòng đăng nhập lại.");
  }

  @override
  Widget build(BuildContext context) {
    String displayTitle = widget.title.isEmpty 
        ? (widget.uid ?? widget.guid ?? 'Trò chuyện') 
        : widget.title;

    return FutureBuilder<User?>(
      future: _loginFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBarWidget(title: displayTitle),
            body: const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          );
        }

        if (snapshot.hasError || snapshot.data == null) {
          return Scaffold(
            appBar: AppBarWidget(title: displayTitle),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: AppColors.error),
                  const SizedBox(height: 16),
                  const Text('Không thể kết nối với hệ thống chat.'),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      snapshot.hasError 
                          ? snapshot.error.toString()
                          : 'Vui lòng kiểm tra cấu hình hoặc đăng nhập lại.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _loginFuture = _checkAndEnsureLogin();
                      });
                    },
                    child: const Text('Thử lại'),
                  ),
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Quay lại'),
                  ),
                ],
              ),
            ),
          );
        }
        
        // User is logged in, show the chat UI
        if (widget.uid == null && widget.guid == null) {
          return Scaffold(
            body: CometChatConversations(
              title: 'Tin nhắn',
              showBackButton: widget.showBackButton,
              emptyStateView: (context) => const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.chat_bubble_outline, size: 48, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'Không có cuộc trò chuyện nào',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              loadingStateView: (context) => Container(
                color: Colors.white,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              onItemTap: (conversation) {
                String? targetUid;
                String? targetGuid;
                String targetTitle = "";

                if (conversation.conversationType == ReceiverTypeConstants.user) {
                  final user = conversation.conversationWith as User;
                  targetUid = user.uid;
                  targetTitle = user.name;
                } else {
                  final group = conversation.conversationWith as Group;
                  targetGuid = group.guid;
                  targetTitle = group.name;
                }

                context.push(Routes.chat, extra: {
                  'uid': targetUid,
                  'guid': targetGuid,
                  'title': targetTitle,
                });
              },
            ),
          );
        }

        return Scaffold(
          body: Column(
            children: [
              CometChatMessageHeader(
                user: widget.uid != null ? User(uid: widget.uid!, name: displayTitle) : null,
                group: widget.guid != null ? Group(guid: widget.guid!, name: displayTitle, type: GroupTypeConstants.public) : null,
                hideVideoCallButton: true,
                hideVoiceCallButton: true,
              ),
              Expanded(
                child: CometChatMessageList(
                  user: widget.uid != null ? User(uid: widget.uid!, name: displayTitle) : null,
                  group: widget.guid != null ? Group(guid: widget.guid!, name: displayTitle, type: GroupTypeConstants.public) : null,
                  hideStickyDate: true,
                  alignment: ChatAlignment.standard,
                  style: const CometChatMessageListStyle(
                    backgroundColor: Colors.white,
                  ),
                  dateSeparatorStyle: const CometChatDateStyle(
                    backgroundColor: Colors.white,
                    textColor: Colors.grey,
                  ),
                  loadingStateView: (context) => Container(
                    color: Colors.white,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  emptyStateView: (context) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: AppColors.primary.withAlpha(25),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.support_agent_rounded,
                              size: 64,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            'Thiết kế Tour riêng',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Hãy nhắn tin để bắt đầu thiết kế Tour riêng cho mình. Vui lòng chờ đợi để một Điều phối viên vào tư vấn cho bạn.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CometChatMessageComposer(   
                user: widget.uid != null ? User(uid: widget.uid!, name: displayTitle) : null,
                group: widget.guid != null ? Group(guid: widget.guid!, name: displayTitle, type: GroupTypeConstants.public) : null,
                hideVoiceRecordingButton: true,
                hideVideoAttachmentOption: true,
                hideAudioAttachmentOption: true,
                hidePollsOption: true,
                hideCollaborativeDocumentOption: true,
                hideCollaborativeWhiteboardOption: true,
                customSoundForMessage: 'assets/sound/beep.mp3',
                customSoundForMessagePackage: 'cometchat_chat_uikit',
              ),
            ],
          ),
        );
      },
    );
  }
}
