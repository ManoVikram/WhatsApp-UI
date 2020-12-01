import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dotted_border/dotted_border.dart';

import '../models/chats.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final statusOverview = Provider.of<ChatData>(context).chatOverview;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    foregroundColor: Theme.of(context).accentColor,
                    // backgroundColor: Colors.grey,
                    radius: 30,
                    child: Center(
                      child: Icon(
                        Icons.upload_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 1,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF25D366),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                "My status",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text(
                "tap to add status update",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recent updates",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              itemBuilder: (contxt, index) => Column(
                children: [
                  Divider(
                    height: 2,
                  ),
                  ListTile(
                    leading: DottedBorder(
                      color: Color(0xFF25D366),
                      strokeWidth: 3,
                      borderType: BorderType.Circle,
                      radius: Radius.circular(12),
                      dashPattern: [6, 0, 2, 3],
                      padding: EdgeInsets.all(2),
                      child: CircleAvatar(
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            NetworkImage(statusOverview[index].avatarURL),
                        radius: 30,
                      ),
                    ),
                    title: Text(
                      statusOverview[index].name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text("Today, ${statusOverview[index].time}"),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
              itemCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
