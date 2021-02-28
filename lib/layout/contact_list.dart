import 'package:agenda/widgets/my_contact_item.dart';
import 'package:appbar_textfield/appbar_textfield.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTextField(
        centerTitle: true,
        title: Text('Minha Agenda'),
        
      ),
      body: Column(children: [
        Expanded(
                  child: ListView.builder(
            shrinkWrap: true,
            itemCount: contacts.length,
            itemBuilder: (context, i) {
              return MyContactItem(
                contactItem: contacts[i],
                onClick: () {
                    selectedContact = contacts[i];
                    Navigator.of(context).pushNamed('/info');
                },
              );
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
