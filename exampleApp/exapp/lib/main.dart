import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classMake.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<User> fetchPost() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    // 만약 서버로의 요청이 성공하면, JSON을 파싱합니다.
    return User.fromJson(jsonDecode(response.body));
  } else {
    // 만약 요청이 실패하면, 에러를 던집니다.
    throw Exception('Failed to load post');
  }
}
//

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

  @override
  void initState(){
    super.initState();
    futureUser = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
 

          child: FutureBuilder<User>(
            future: futureUser,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  
                  children: [
                    Text(snapshot.data!.title,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        backgroundColor: Color.fromARGB(255, 12, 76, 129)
                      )
                    ),
                    Text(snapshot.data!.body),
                    Text(snapshot.data!.user_id.toString())
                  ],  
                );

              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

}

//위젯 단위로 붐리해서 impoert