import 'package:flutter/material.dart';

void main() => runApp(Myapp);

class MyApp extends StatefulWidget{

}

class MyAppState extends State<MyApp>{
  late String name;

  final myController = TextEditingController();
  
  
  @override
  Widget bulid(BuildContext context){

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('enter your name'),
              TextField(
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  labelText: 'enter your name',
                ),
                controller: myController,
              ),
              FloatingActionButton(
                onPressed: (() => {
                  name = myController.text
                } 
              ),
              
            ],
          ),
        ),
      ),
    )
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}