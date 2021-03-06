import 'package:agenda/widgets/my_contact_creation_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agenda/database/agenda_database.dart';

class ContactCreation extends StatefulWidget {
  @override
  _ContactCreationState createState() => _ContactCreationState();
}

class _ContactCreationState extends State<ContactCreation> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _contactNumber = TextEditingController();
    final _contactName = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Adicionar Contato'),
        ),
        body: MyContactCreationForm(
          formKey: _formKey,
          nameFieldController: _contactName,
          telephoneFieldController: _contactNumber,
        )
    );
  }
}
