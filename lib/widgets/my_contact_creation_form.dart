import 'package:agenda/database/agenda_database.dart';
import 'package:agenda/model/contact.dart';
import 'package:agenda/widgets/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class MyContactCreationForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameFieldController;
  final TextEditingController telephoneFieldController;

  const MyContactCreationForm(
      {Key key,
      this.nameFieldController,
      this.telephoneFieldController,
      this.formKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            MyTextField(
              controller: nameFieldController,
              hintText: 'Nome',
              validator: (value) {
                if (value.isEmpty) {
                  return 'Digite um nome';
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            MyTextField(
              controller: telephoneFieldController,
              hintText: 'Número',
              isNumber: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Digite um número';
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    var newContact = Contact(
                      0, 
                      nameFieldController.text,
                      telephoneFieldController.text);
                    DBProvider.db.newContact(newContact);
                  }
                },
                child: Text('Salvar'))
          ],
        ),
      ),
    );
  }
}
