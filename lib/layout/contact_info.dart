import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Telefone(s)',
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            RaisedButton(
                child: Container(
                    child: Text(
                      'Adicionar Numero',
                      textAlign: TextAlign.center,
                    )),
                onPressed: () {},
                ),
            RaisedButton(
                child: Container(
                    child: Text(
                      'Salvar',
                      textAlign: TextAlign.center,
                    )),
                onPressed: () {

                },
            )
          ],
        ),
      )),
    );
  }
}
