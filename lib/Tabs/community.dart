import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 200, // Adjust height as needed
            child: Image.asset('assets/images/community.png'),
          ),
          SizedBox(
            height: 10, // Adjust height as needed
          ),
          const Text(
            'Stay connected with a community',
            style: TextStyle(fontSize: 16),
          ),
          Container(
            width: 400,
            child: Column(
              children: [
                SizedBox(
                  height: 20, // Adjust height as needed
                ),

                Text(
                  'Communities bring members together in topic-based groups, and make',
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  'it easy to get admin announcements. Any community you’re added to',
                  style: TextStyle(fontSize: 10),
                ),
                Text('will appear here.', style: TextStyle(fontSize: 10)),
                SizedBox(
                  height: 20, // Adjust height as needed
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See example communities.',
                    style: TextStyle(fontSize: 10, color: Colors.teal[400]),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 40),
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.teal[800],
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                'Start your Community',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
