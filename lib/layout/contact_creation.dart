import 'package:agenda/globals.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCreation extends StatefulWidget {
  @override
  _ContactCreationState createState() => _ContactCreationState();
}

class _ContactCreationState extends State<ContactCreation> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {

    final _contactNumber = TextEditingController();
    final _contactName = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Adicionar Contato'),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _contactName,
                      decoration: InputDecoration(
                          hintText: 'Nome', border: OutlineInputBorder()),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Digite algum nome';
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _contactNumber,
                      decoration: InputDecoration(
                          hintText: 'Telefone', border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Digite um telefone';
                        }
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Contact contact = Contact(
                            displayName: _contactName.text,
                            phones: [Item(value: _contactNumber.text)]);
                            contacts.add(contact);
                          Navigator.pushNamedAndRemoveUntil(context, "/home", (r) => false);
                        }
                      },
                      child: Text('Salvar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
