import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text('My Status'),
            subtitle: const Text('Tap to add status update'),
            leading: Stack(
              children: [const CircleAvatar(child: Icon(Icons.person))],
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.grey[200],
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            child: const Text('Recent updates'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Status $index'),
                  subtitle: const Text('This is a status'),
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
