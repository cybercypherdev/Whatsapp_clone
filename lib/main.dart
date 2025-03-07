import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Tabs/callsscreen.dart';
import 'package:whatsapp_clone/Tabs/chartsscreen.dart';
import 'package:whatsapp_clone/Tabs/community.dart';

import 'package:whatsapp_clone/Tabs/statuscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4, // Number of tabs (Chats, Status, Calls, Community)
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text(
          'WhatsApp',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: null,
          ),
        ],
        bottom: TabBar(
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.teal[100],
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.people_alt)),
            Tab(text: 'Chats'),
            Tab(text: 'Status'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CommunityScreen(),
          ChartScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
    );
  }
}
