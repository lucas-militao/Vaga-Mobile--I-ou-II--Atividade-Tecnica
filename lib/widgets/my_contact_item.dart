import 'package:agenda/model/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContactItem extends StatelessWidget {
  final Contact contactItem;
  final Function onClick;

  const MyContactItem({Key key, this.contactItem, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Text(
                  contactItem.name,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.left,
                ),
                width: double.infinity,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0, 
              color: Colors.grey))),
      ),
      onTap: () {
        onClick();
      },
    );
  }
}
