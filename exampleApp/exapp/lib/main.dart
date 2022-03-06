import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{


  @override
  MyAppState createState() => MyAppState();
  
}

class MyAppState extends State<MyApp>{
  late String name = "";

  final myController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {
                  setState((){
                    name = myController.text;
                  });
                },
              ),

              Text(
                'hello $name'
              ),  
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
    
  }




 
}