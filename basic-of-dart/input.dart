import 'dart:io';

main(){
  //Use stdout to print the info String
  stdout.writeln('Please wirte your name');

  //String input : readLineSync
  
  //optional -> null방지하기 위해
  String? name = stdin.readLineSync();

  //check the type
  print(name.runtimeType);

  //print the variable with dollor($) sign
  print('Your name is $name');

}