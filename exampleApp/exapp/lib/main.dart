import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classMake.dart';

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
    

  @override
  Widget build(BuildContext context) {
    

    //User Data제작
    User user1 = User(1,1,"title1","body1");
    User user2 = User(1,1,"title2","body2");
    User user3 = User(1,1,"title3","body3");
    final List<User> users = <User>[user1,user2,user3];


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
