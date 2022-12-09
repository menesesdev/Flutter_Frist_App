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
  List<String> _list = [];

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
              if (result!.isNotEmpty) {
                _list.add(result!);
              }
            });
          },
          backgroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
        body: _list.length > 0
            ? ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    background: Container(
                      child: Icon(Icons.clear_rounded),
                      color: Colors.red,
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        _list.removeAt(index);
                      });
                    },

                    child: Card(
                      child: ListTile(
                        title: Text(_list[index]),
                      ),
                    ), key: Key(_list[index]),
                  );
                },
              )
            : Center(
                child: Text('Não há itens'),
              ));
  }
}
