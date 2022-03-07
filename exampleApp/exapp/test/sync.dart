import 'dart:io';

void main(){
  showData();
}

void showData(){
  startTask();
  accessData();
  fetchData();
}

void startTask(){
  String info1 = 'Start the task';
  print(info1);
}

void accessData(){
  String info2 = 'access to the data';
  print(info2);
}
void fetchData(){
  String info3 = 'fecth the data to client';
  print(info3); 
}