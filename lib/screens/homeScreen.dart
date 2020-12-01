import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './cameraScreen.dart';
import './chatsScreen.dart';
import './statusScreen.dart';
import './callsScreen.dart';
import '../models/chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (contxt) => ChatData(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          elevation: 1,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            controller: _tabController,
            indicatorColor: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
          controller: _tabController,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 10,
          child: Icon(Icons.message),
          backgroundColor: Color(0xFF25D366),
        ),
      ),
    );
  }
}
