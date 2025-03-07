import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  Contacts({super.key});
  final List _contact = [
    {'name': 'Contact 1', 'message': 'Hey there 🫴', 'time': '10:20 pm'},
    {'name': 'Contact 2', 'message': 'Uko fty Mkuu', 'time': '10:20 pm'},
    {'name': 'Contact 3', 'message': 'Kiongozi', 'time': '10:20 pm'},
    {'name': 'Contact 4', 'message': 'We have a Cat Today', 'time': '10:20 pm'},
    {'name': 'Contact 5', 'message': 'Hey Bro', 'time': '10:20 pm'},
    {'name': 'Contact 6', 'message': 'Niaje', 'time': '10:20 pm'},
    {
      'name': 'Contact 7',
      'message': 'Please teach me Flutter',
      'time': '10:20 pm',
    },
    {
      'name': 'Contact 8',
      'message': 'Any advice on this Bro',
      'time': '10:20 pm',
    },
    {'name': 'Contact 9', 'message': 'Can we meet tonight', 'time': '10:20 pm'},
    {'name': 'Contact 9', 'message': 'Can we meet tonight', 'time': '10:20 pm'},
    {'name': 'Contact 10', 'message': 'Nitumie hio Doc', 'time': '10:20 pm'},
  ];
  @override
  Widget build(BuildContext context) {
    return ContactItem(contact: _contact, context: context);
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required List contact, required this.context})
    : _contact = contact;

  final List _contact;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text('${_contact[0]['name']}'),

          Spacer(),
          Text(
            '${_contact[0]['time']}',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
        ],
      ),
      subtitle: Text(
        '${_contact[0]['message']}',
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      ),
      leading: const CircleAvatar(child: Icon(Icons.person)),
    );
  }
}
