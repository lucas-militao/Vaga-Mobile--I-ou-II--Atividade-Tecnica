import 'package:agenda/database/agenda_database.dart';
import 'package:agenda/globals.dart';
import 'package:agenda/model/contact.dart';
import 'package:agenda/widgets/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContactChangeForm extends StatelessWidget {
  final Contact contactSelected;
  final GlobalKey<FormState> changeFormKey;

  final TextEditingController nameFieldController;
  final TextEditingController phoneFieldController;

  MyContactChangeForm(
      {Key key,
      this.contactSelected,
      this.changeFormKey,
      this.nameFieldController,
      this.phoneFieldController})
      : super(key: key);

  updateContact(int id, Contact contactUpdated) async {
    var result = DBProvider.db.updateContact(id, contactUpdated);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    nameFieldController.text = contactSelected.name;
    phoneFieldController.text = contactSelected.telephone;
    return Form(
      key: changeFormKey,
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
            ElevatedButton(
                child: Text('Salvar'),
                onPressed: () {
                  var contactUpdated = Contact(selectedContact.id,
                      nameFieldController.text, phoneFieldController.text);
                  updateContact(selectedContact.id, contactUpdated);
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (r) => false);
                })
          ],
        ),
      ),
    );
  }
}
