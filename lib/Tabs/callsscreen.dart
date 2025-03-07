import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.teal[800],
                  child: Icon(Icons.attach_file, color: Colors.white),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Create call link',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Share a link for your WhatsApp calls',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Recent'),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Text('Contact 1', style: TextStyle(fontSize: 13)),
                Spacer(),
                Icon(Icons.call, size: 20, color: Colors.teal[800]),
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_made, size: 15, color: Colors.teal[800]),
                Text(
                  ' Today. 7:20 pm',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                ),
              ],
            ),
            leading: const CircleAvatar(child: Icon(Icons.person)),
          ),
          ListTile(
            title: Row(
              children: [
                Text('Contact 2', style: TextStyle(fontSize: 13)),
                Spacer(),
                Icon(Icons.call, size: 20, color: Colors.teal[800]),
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_received, size: 15, color: Colors.teal[800]),
                Text(
                  ' Today. 6:00 pm',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                ),
              ],
            ),
            leading: const CircleAvatar(child: Icon(Icons.person)),
          ),
          ListTile(
            title: Row(
              children: [
                Text('Contact 3', style: TextStyle(fontSize: 13)),
                Spacer(),
                Icon(Icons.call, size: 20, color: Colors.teal[800]),
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.call_made, size: 15, color: Colors.red),
                Text(
                  ' Today. 11:20 am',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                ),
              ],
            ),
            leading: const CircleAvatar(child: Icon(Icons.person)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 110, top: 10),
            child: Row(
              children: [
                Icon(Icons.lock, size: 10),
                Text('Your personal calls are', style: TextStyle(fontSize: 8)),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'end to end encrypted',
                    style: TextStyle(color: Colors.teal[800], fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[800],
        onPressed: null,
        child: const Icon(Icons.add_call, color: Colors.white),
      ),
    );
  }
}
