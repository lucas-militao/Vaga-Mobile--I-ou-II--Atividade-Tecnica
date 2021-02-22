import 'package:appbar_textfield/appbar_textfield.dart';
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
      appBar: AppBarTextField(),
      body: ListView(children: [
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
        Text('Contato', style: TextStyle(fontSize: 50),),
      ],),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add)
      ),
    );
  }
}
