import 'package:agenda/globals.dart';
import 'package:agenda/widgets/my_text_field.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContactChangeForm extends StatelessWidget {
  final Contact contactSelected;
  final GlobalKey<FormState> contactChangeForm;

  var phoneFieldsController = List<TextEditingController>();
  var nameFieldController = TextEditingController();
  var phoneFieldController = TextEditingController();

  MyContactChangeForm({Key key, this.contactSelected, this.contactChangeForm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    nameFieldController.text = contactSelected.displayName;
    phoneFieldController.text = contactSelected.phones.toList()[0].value.toString();
    return Form(
      key: contactChangeForm,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MyTextField(
              controller: nameFieldController,
              validator: (value) {
                if (value.isEmpty()) {
                  return 'Digite um nome';
                }
              },
            ),
            MyTextField(
              controller: phoneFieldController,
              validator: (value) {
                if (value.isEmpty()) {
                  return 'Digite um numero';
                }
              },
            ),
            RaisedButton(
              child: Text('Salvar'),
              onPressed: () {
                if(contactChangeForm.currentState.validate()) {
                  var index = contacts.indexOf(contactSelected);
                  var contactUpdated = Contact(
                    displayName: nameFieldController.text,
                    phones: [Item(value: phoneFieldsController[0].text)]
                  );
                  contacts[index] = contactUpdated;
                  Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (r) => false);
                }
              } 
            )
          ],
        ),
      ),
    );
  }
}
