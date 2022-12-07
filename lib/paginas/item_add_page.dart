//import 'dart:html';

import 'package:flutter/material.dart';

class ItemAddPage extends StatelessWidget {
  TextEditingController _controllerText = TextEditingController();

  //const ItemAddPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Item'),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.done),
          onPressed: () {
            Navigator.pop(context, _controllerText.text);
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text('Descrição do Item'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: TextField(controller: _controllerText,),
          ),
        ],
      ),
    );
  }
}
