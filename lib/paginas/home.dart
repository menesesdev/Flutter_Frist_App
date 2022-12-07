import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:teste2/paginas/item_add_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('@meneses.dev - frist app'),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(context,
              MaterialPageRoute<String>(builder: (context) {
            return ItemAddPage();
          }));
          setState(() {
            texto = result!;
          });
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_right),
      ),
      body: Center(child: Text(texto)),
    );
  }
}
