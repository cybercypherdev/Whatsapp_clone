import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/contact.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [Contacts()]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[800],
        onPressed: null,
        child: const Icon(Icons.add_comment, color: Colors.white),
      ),
    );
  }
}
