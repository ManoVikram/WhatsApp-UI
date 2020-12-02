import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './userChatScreen.dart';
import '../models/chats.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatOverview = Provider.of<ChatData>(context).chatOverview;
    return ListView.builder(
      itemBuilder: (contxt, index) => Column(
        children: [
          Divider(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(UserChatScreen.routeName, arguments: {
                "avatar": chatOverview[index].avatarURL,
                "name": chatOverview[index].name,
              });
            },
            child: ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatOverview[index].avatarURL),
                radius: 24,
              ),
              title: Text(
                chatOverview[index].name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                chatOverview[index].message,
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              trailing: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      chatOverview[index].time,
                      style: TextStyle(
                        color: chatOverview[index].name == "Mano Vikram"
                            ? Color(0xFF25D366)
                            : Colors.grey[700],
                      ),
                    ),
                  ),
                  if (chatOverview[index].name == "Mano Vikram")
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF25D366),
                      ),
                      child: Center(
                        child: Text(
                          "7",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      itemCount: chatOverview.length,
    );
  }
}
