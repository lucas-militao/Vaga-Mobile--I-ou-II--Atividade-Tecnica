import 'package:appbar_textfield/appbar_textfield.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

Widget ContactItem(Contact contact) {
  return InkWell(
      child: Container(child: Padding(
      padding: const EdgeInsets.all(10), 
      child: Text(contact.displayName, style: TextStyle(fontSize: 18.0),),),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        )
      ),
    ),
    onTap: () {
       
    },
  );
}

class _ContactListState extends State<ContactList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTextField(),
      body: Column(children: [
        Expanded(
                  child: ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, i) {
              return ContactItem(contacts[i]);
            },
          ),
        )
      ],),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/create');
        },
      ),
    );
  }
}
