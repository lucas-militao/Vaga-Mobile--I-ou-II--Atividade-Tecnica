import 'package:agenda/widgets/my_contact_change_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class ContactChange extends StatefulWidget {
  @override
  _ContactChangeState createState() => _ContactChangeState();
}

class _ContactChangeState extends State<ContactChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alteração de Contato'),
        centerTitle: true,
      ),
      body: Column(
        children: [MyContactChangeForm(contactSelected: selectedContact)],
      ),
    );
  }
}
