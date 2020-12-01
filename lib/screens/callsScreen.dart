import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/chats.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final callOverview = Provider.of<ChatData>(context).chatOverview;
    return Center(
      child: ListView.builder(
        itemBuilder: (contxt, index) => Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(callOverview[index].avatarURL),
                radius: 24,
              ),
              title: Text(
                callOverview[index].name,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made,
                    color: Color(0xFF25D366),
                    size: 20,
                  ),
                  Text("Today, ${callOverview[index].time}"),
                ],
              ),
              trailing: callOverview[index].name == "Mano Vikram"
                  ? Icon(
                      Icons.videocam,
                      color: Theme.of(context).accentColor,
                    )
                  : Icon(Icons.call, color: Theme.of(context).accentColor),
            ),
          ],
        ),
        itemCount: callOverview.length,
      ),
    );
  }
}
