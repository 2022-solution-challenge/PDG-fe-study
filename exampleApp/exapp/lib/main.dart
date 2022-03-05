import 'package:flutter/material.dart';

// main 함수 , the starting point of app
void main(){
  runApp(Myapp());
}
//괄호 안에서는 위젯들어감

class Myapp extends StatelessWidget {
  const Myapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );    
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first Text'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation: 0.0,
      ),

      //body에 Padding 지정
      body:  Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello'),
              Text('Second data'),
              Text('hi from flutter'),
            ],
          ),
      ),
        
    );
  }
}