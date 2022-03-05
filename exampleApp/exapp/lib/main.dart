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
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('hello'),
              Text('Second data',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              Text('hi from flutter'),
              SizedBox(
                height: 30.0,
              ),
              Text('Second data',
              style: TextStyle(
                color: Colors.amber[800],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                  ),
                ],
              )
            ],
          ),
      ),
        
    );
  }
} 