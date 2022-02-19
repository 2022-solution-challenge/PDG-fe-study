import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classMake.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<User> fetchPost() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    return User.fromJson(json.decode(response.body));
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
    
  Future<User>? user;

  @override
  void initState(){
    super.initState();
    user = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    


    
    //User Data제작


    //텍스트 스타일
    var _navigationTextStyle = TextStyle(color: CupertinoColors.white, fontFamily: 'GyeonggiMedium');
    var _listTextStyle = TextStyle(color: CupertinoColors.black, fontFamily: 'GyeonggiLight');


    // 상단 네비게이션 바 제작하기
    var _navigationBar = CupertinoNavigationBar(
      middle: Text("informations",style: _navigationTextStyle),
      backgroundColor: CupertinoColors.activeBlue,
    );

    //리스트 뷰 위젯 제작
    var _listView = ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text(users[index].title, style: _listTextStyle),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
    );

    //렌더링
    return CupertinoPageScaffold(
      navigationBar: _navigationBar,
      child: _listView,
    );

    throw UnimplementedError();
  }
}
