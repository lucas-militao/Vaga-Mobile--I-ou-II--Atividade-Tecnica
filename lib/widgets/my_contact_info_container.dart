import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContactInfoContainer extends StatelessWidget {
  final Contact contact;

  const MyContactInfoContainer({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Telefone(s)',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20.0,
      ),
      ListView(
        shrinkWrap: true,
        children: [
          for (var i in contact.phones)
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  i.value,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            ),
        ],
      ),
    ]);
  }
}
