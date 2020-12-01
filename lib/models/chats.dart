import 'package:flutter/widgets.dart';

class Chat {
  final String name;
  final String message;
  final String avatarURL;
  final String time;

  Chat({
    @required this.name,
    @required this.message,
    @required this.avatarURL,
    @required this.time,
  });
}

class ChatData with ChangeNotifier {
  List<Chat> _chatOverview = [
    Chat(
      name: "Mano Vikram",
      message: "WhatsApp is boring!!",
      avatarURL:
          "https://qph.fs.quoracdn.net/main-thumb-521623997-200-luuxcztgdwufegvsaezmfsrkbxkgiqeg.jpeg",
      time: "18:00",
    ),
    Chat(
      name: "Steve Jobs",
      message:
          "Have the courage to follow your heart and intuition. They somehow already know what you truly want to become. Everything else is secondary.",
      avatarURL:
          "https://www.gstatic.com/tv/thumb/persons/476283/476283_v9_ba.jpg",
      time: "11:00",
    ),
  ];

  List<Chat> get chatOverview {
    return [..._chatOverview];
  }
}
