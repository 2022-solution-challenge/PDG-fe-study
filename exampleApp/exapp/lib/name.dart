import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classMake.dart';
import 'dart:async';
import 'dart:convert';
import 'pxackage:http/http.dart' as http;

Future<String> getName(String name) async{
   String newUrl = 'https://solution-challenge-hb6fjqbi3q-du.a.run.app/user/'+name;
   final response = await http.get(Uri.parse(newUrl));

   if(response.statusCode == 200){
     return response.body;
   } else{
     throw Exception('Failed to load post');
   }
}

void main(){
}