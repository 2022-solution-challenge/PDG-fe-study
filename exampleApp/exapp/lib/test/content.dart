import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../classMake.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


Future<String> getName(String name) async{
  String newUrl = 'https://solution-challenge-hb6fjqbi3q-du.a.run.app/user/'+name;
  final response = await http.get(Uri.parse(newUrl));
  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    return response.body;
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}


class Content extends StatelessWidget {
    
  late Future<User> futureUser;
  final myController = TextEditingController();
  String inputText = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Api Example'),
        ),
        body:
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      maxLength: 5,
                      controller: myController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'enter your name',
                        counterText: '',
                      ),
                    )
                  ),
                  OutlinedButton(
                    onPressed: () => {
                      setState((){
                        String name = myController.text;
                        getName(name).then((value){
                          inputText = value;
                        }).onError((error, stackTrace){
                          inputText = 'error';
                        });
                      })
                    },
                    child: Text('Search'),
                  )
                  ],
                ),
                Container(
                  child: Text(
                    '$inputText',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ) 
              
              ],
            )
            
            
      ),
    );
  }

}
