import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Agenda'),
        actions: [
          Icon(Icons.add)
        ],
      ),
      body: Text('Ola Mundo!'),
    );
  }
}