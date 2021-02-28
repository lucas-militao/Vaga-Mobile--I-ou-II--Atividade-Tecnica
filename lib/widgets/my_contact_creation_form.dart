import 'package:agenda/widgets/my_text_field.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class MyContactCreationForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameFieldController;
  final TextEditingController numberFieldController;

  const MyContactCreationForm(
      {Key key,
      this.nameFieldController,
      this.numberFieldController,
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
              controller: numberFieldController,
              hintText: 'Número',
              validator: (value) {
                if (value.isEmpty) {
                  return 'Digite um número';
                }
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    Contact newContact = Contact(
                        displayName: nameFieldController.text,
                        phones: [Item(value: numberFieldController.text)]);
                    contacts.add(newContact);
                    print(newContact.displayName);
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (r) => false);
                  }
                },
                child: Text('Salvar'))
          ],
        ),
      ),
    );
  }
}
