import 'package:agenda/widgets/my_text_field.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';

class MyContactChangeForm extends StatelessWidget {
  final Contact contactSelected;
  final List<TextEditingController> phoneFieldsController;
  final TextEditingController nameFieldController;

  const MyContactChangeForm({Key key, this.phoneFieldsController, this.nameFieldController, this.contactSelected}) : super(key: key);

  // Widget phoneFields(Iterable<Item> phones) {
  //   List<Widget> list = new List<Widget>();
  //   for(var i = 0; i < phones.length; i++){
  //     phoneFieldsController.add(TextEditingController());
  //   }
  // }
  
  @override
  Widget build(BuildContext context) {
    
    return Form(
      // child: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Column(children: [
      //     MyTextField(
      //       controller: nameFieldController,
      //       validator: (value) {
      //         if(value.isEmpty()) {
      //           return 'Digite um nome';
      //         }
      //       },
      //     ),
      //   ],),),
    );
  }
}