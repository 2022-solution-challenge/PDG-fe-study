import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classMake.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import './test.json';


// Future<User> fetchPost() async {
//   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments?postId=1'));
//   // print(jsonDecode(response.body));
//   if (response.statusCode == 200) {
//     // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
//     return User.fromJson(jsonDecode(response.body));
//   } else {
//     // 만약 요청이 실패하면, 에러를 던집니다.
//     throw Exception('Failed to load post');
//   }
// }


//api get
Future<String> getName(String name) async{
  String newUrl = 'https://solution-challenge-hb6fjqbi3q-du.a.run.app/user/'+name;
  final response = await http.get(Uri.parse(newUrl));
  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    // print(response.body);
    return response.body;
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    
  late Future<User> futureUser;
  final myController = TextEditingController();
  late String inputText;


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

//위젯 단위로 붐리해서 impoert