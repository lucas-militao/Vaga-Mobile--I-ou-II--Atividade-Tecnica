import 'package:agenda/widgets/my_text_field.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContactChangeForm extends StatelessWidget {
  final Contact contactSelected;

  var phoneFieldsController = List<TextEditingController>();
  var nameFieldController = TextEditingController();

  MyContactChangeForm(
      {Key key,
      this.contactSelected})
      : super(key: key);

  Widget PhoneFields(Iterable<Item> phones) {
    var listWidgets = new List<Widget>();
    var listPhones = contactSelected.phones.toList();
    for (var i = 0; i < phones.length; i++) {
      TextEditingController newController = TextEditingController();
      newController.text = listPhones[i].value;
      phoneFieldsController.add(TextEditingController());
      listWidgets.add(MyTextField(
        controller: newController,
        isNumber: true,
        validator: (value) {
          if (value.isEmpty()) {
            return 'Digite um número';
          }
        },
      ));
    }
    return new Column(children: listWidgets,);
  }

  @override
  Widget build(BuildContext context) {
    
    nameFieldController.text = contactSelected.displayName;

    return Form(
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
            PhoneFields(contactSelected.phones),
          ],
        ),
      ),
    );
  }
}
