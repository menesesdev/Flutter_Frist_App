import 'package:flutter/material.dart';
import 'package:teste2/paginas/home.dart';
    
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
   
  @override  
  Widget build(BuildContext context) {  
   
    return MaterialApp(
        debugShowCheckedModeBanner: false,  
        title: 'Primeiro App',
        theme: ThemeData.dark(),
        home: MyHomePage(), 
    );  
  }  
}  
