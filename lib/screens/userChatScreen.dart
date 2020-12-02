import 'package:flutter/material.dart';

class UserChatScreen extends StatelessWidget {
  static const routeName = "/userChats";

  @override
  Widget build(BuildContext context) {
    final userData =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        // leading: Image.network(userData["avatar"]),
        // leadingWidth: 40,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(userData["avatar"]),
              radius: 20,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              userData["name"],
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: [
          Icon(Icons.videocam),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.call),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 3,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.blue[100],
                ),
                padding: EdgeInsets.all(4),
                child: Text(
                  "TODAY",
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 40,
                    width: 300,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Hello There",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 40,
                      width: 300,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Text(
                        "What's up??",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width,
                        maxWidth: MediaQuery.of(context).size.width,
                        minHeight: 25.0,
                        maxHeight: 135.0,
                      ),
                      child: Scrollbar(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                          ),
                          child: TextField(
                            autocorrect: true,
                            scrollController: null,
                            cursorColor: Colors.blue,
                            keyboardType: TextInputType.multiline,
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(
                                Icons.attachment,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: 2.0,
                                left: 13.0,
                                right: 13.0,
                                bottom: 2.0,
                              ),
                              hintText: "Type your message",
                              hintStyle: TextStyle(
                                height: 2,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
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
