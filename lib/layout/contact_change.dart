import 'package:agenda/widgets/my_contact_change_form.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';



class ContactChange extends StatefulWidget {
  @override
  _ContactChangeState createState() => _ContactChangeState();
}

class _ContactChangeState extends State<ContactChange> {
  final nameFieldController = TextEditingController();
  final phoneFieldController = TextEditingController();
  GlobalKey<FormState> editFormKey;


  @override
  void initState() {
    super.initState();
    editFormKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alteração de Contato'),
        centerTitle: true,
      ),
      body: Column(
        children: [MyContactChangeForm(
          contactSelected: selectedContact,
          changeFormKey: editFormKey,
          nameFieldController: nameFieldController,
          phoneFieldController: phoneFieldController,
        )],
      ),
    );
  }
}
